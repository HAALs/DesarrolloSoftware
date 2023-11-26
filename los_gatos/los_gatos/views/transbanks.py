from django.shortcuts import render
from django.http import HttpResponse
import requests

# MÉTODO QUE CREA LA CABECERA SOLICITADA POR TRANSBANK EN UN REQUEST (SOLICITUD)
def header_request_transbank():
    headers = { # DEFINICIÓN TIPO DE AUTORIZACIÓN Y AUTENTICACIÓN
                "Authorization": "Token",
                # LLAVE QUE DEBE SER MODIFICADA PORQUE ES SOLO DEL AMBIENTE DE INTEGRACIÓN DE TRANSBANK (PRUEBAS)
                "Tbk-Api-Key-Id": "597055555532",
                # LLAVE QUE DEBE SER MODIFICADA PORQUE DEL AMBIENTE DE INTEGRACIÓN DE TRANSBANK (PRUEBAS)
                "Tbk-Api-Key-Secret": "579B532A7440BB0C9079DED94D31EA1615BACEB56610332264630D42D0A36B1C",
                # DEFINICIÓN DEL TIPO DE INFORMACIÓN ENVIADA
                "Content-Type": "application/json",
                # DEFINICIÓN DE RECURSOS COMPARTIDOS ENTRE DISTINTOS SERVIDORES PARA CUALQUIER MÁQUINA
                "Access-Control-Allow-Origin": "*",
                'Referrer-Policy': 'origin-when-cross-origin',
                } 
    return headers

# DEFINICIÓN DE RUTA API REST, PERMITIENDO SOLO SER LLAMADO POR POST
def transbank_create(data):
    print('transbank_create: ')
    # LECTURA DE PAYLOAD (BODY) CON INFORMACIÓN DE TIPO JSON
    print('data: ', data)
    # DEFINICIÓN DE URL DE TRANSBANK PARA CREAR UNA TRANSACCIÓN
    url = "https://webpay3gint.transbank.cl/rswebpaytransaction/api/webpay/v1.2/transactions"
    # CABECERA SOLICITADA POR TRANSBANK
    headers = header_request_transbank()
    # INVOCACIÓN POR POST A API REST QUE CREA UNA TRANSACCIÓN EN TRANSBANK
    response = requests.post(url, json = data, headers=headers)
    # RETORNO DE LA RESPUESTA DE TRANSBANK
    return response  

# DEFINICIÓN DE RUTA API REST CON UN PARAMETRO DE ENTRADA (tokenws) EN EL PATH, PERMITIENDO SOLO SER LLAMADO POR GET
def transbank_commit(tokenws):
    print('transbank_commit: ')
    print('tokenws: ', tokenws)
    # DEFINICIÓN DE URL DE TRANSBANK PARA CONFIRMAR UNA TRANSACCIÓN
    url = "https://webpay3gint.transbank.cl/rswebpaytransaction/api/webpay/v1.2/transactions/{0}".format(tokenws)
    # CABECERA SOLICITADA POR TRANSBANK
    headers = header_request_transbank()
    # INVOCACIÓN POR GET A API REST QUE CONFIRMA UNA TRANSACCIÓN EN TRANSBANK    
    response = requests.put(url, headers=headers)
    # RETORNO DE LA RESPUESTA DE TRANSBANK
    return response

# DEFINICIÓN DE RUTA API REST CON UN PARAMETRO DE ENTRADA (tokenws, amount) EN EL PATH, PERMITIENDO SOLO SER LLAMADO POR POST
def transbank_reverse_or_cancel(tokenws, data):
    print('transbank_reverse_or_cancel: ')
    print('tokenws: ', tokenws)
    # LECTURA DE PAYLOAD (BODY) CON INFORMACIÓN DE TIPO JSON
    print('data: ', data)
    # DEFINICIÓN DE URL DE TRANSBANK PARA CONFIRMAR UNA TRANSACCIÓN
    url = "https://webpay3gint.transbank.cl/rswebpaytransaction/api/webpay/v1.2/transactions/{0}/refunds".format(tokenws)
    # CABECERA SOLICITADA POR TRANSBANK
    headers = header_request_transbank()
    # INVOCACIÓN POR GET A API REST QUE CONFIRMA UNA TRANSACCIÓN EN TRANSBANK    
    response = requests.post(url, json = data, headers=headers)
    # RETORNO DE LA RESPUESTA DE TRANSBANK
    return response

def index(request):
    print('hola mundo')  
    if request.method == 'GET':
        #MODIFICAR ESTA SECCIÓN Y CARGAR CARRITO DESDE LA SESSIÓN
        products = []
        #MODIFICAR ESTE MONTO POR EL TOTAL A PAGAR
        total = 1
        return render(request, "transbank.html", {'products': products, 'total': total})
    elif  request.method == 'POST':        
        total = request.POST.get('total')
        print (total)
        host = request.get_host()
        host_parts = host.split(':')
        host = host_parts[0]
        port = host_parts[1] if len(host_parts) > 1 else None

        buy_order = 123456789 # CAMBIAR POR EL NÚMERO DE LA BOLETA
        session_id = 12345786 # CAMBIAR POR LA SESIÓN DEL USUARIO
        amount = total

        return_url = 'http://{0}:{1}/commit-pay/'.format(host, port)

        body = {
            "buy_order": buy_order,
            "session_id": session_id,
            "amount": amount,
            "return_url": return_url
            }
        response = transbank_create(body)
        print(f'response: {response}')

        if response.status_code == 200 :
            context = {
                'amount': amount,
                'transbank' : response.json()
            }
            return render(request, "send-pay.html", {'context': context})
        
def commit_pay(request):
    print('commit_pay: ')
    print(f'METHOD: {request.method}')
    token_ws = request.GET['token_ws']
    response = transbank_commit(token_ws)
    json_response = response.json()

    return render(request, 'commit-pay.html', {'transaction_detail': json_response})