from django.shortcuts import render
from django.http import HttpResponse
from los_gatos.models.models import Productos,SubTipoProducto
from los_gatos.views import carts

def load(request):
    if request.method == 'GET':
        try:
            id_producto = request.GET.get('id_producto')
            print('id_producto: ', id_producto)
            username = str(request.user)
            print('username: ', username)
            carts.add_product(id_producto, username)
        except Exception as ex:
            print('Error ', ex)
    quantity = carts.load_carts(request)
    return render(request, 'destilados.html', {'destilados' : load_product(), 'quantity': carts.load_carts(request)})

def load_product():
    return Productos.objects.all()

# Create your views here.
def index(request):
    print(f'request.method: {request.method}')
    if request.method == 'GET': 
        tipos = SubTipoProducto.objects.filter(id_sub_tipo_producto__in=[11,12])
        products = Productos.objects.filter(id_tipo_producto='6')
        return render(request, "destilados.html", {"tipos": tipos, "products": products})
    else: 
        tipo = request.POST.get('tipo')
        print(f'tipo: {tipo}')
        print('action: ' + request.POST.get('action'))
        if request.POST.get('action') == 'filter':
            tipos = SubTipoProducto.objects.filter(id_sub_tipo_producto__in=[11,12])
            products = Productos.objects.filter(id_sub_tipo_producto=tipo)
            return render(request, "destilados.html", {"tipos": tipos, "products": products})
        else:
            id_producto = request.POST.get('id_producto')
            print(f'id_producto: {id_producto}')
            items = request.session.get('carts')
            print(f'items: {items}')
            tipos = SubTipoProducto.objects.filter(id_sub_tipo_producto__in=[11,12])
            products = Productos.objects.filter(id_tipo_producto='6')
            producto = Productos.objects.get(id_producto=id_producto)
            if items != None:
                finded = False
                for item in items:
                    print(f'item: {item}')
                    if item['id_producto'] == id_producto:
                        item['quantity'] = int(item['quantity']) + 1
                        item['total'] = int(item['quantity'])*int(item['price'])

                        finded = True
                if finded == False:
                    items.append({'id_producto': id_producto, 'quantity': 1, 'nombre_producto': producto.nombre_producto, 'imagen_url': producto.imagen, 'price': producto.precio, 'total': producto.precio})
                request.session['carts'] = items
                return render(request, "destilados.html", {"tipos": tipos, "products": products})
            else: 
                items = []
                items.append({'id_producto': id_producto, 'quantity': 1, 'nombre_producto': producto.nombre_producto, 'imagen_url': producto.imagen, 'price': producto.precio, 'total': producto.precio})
                request.session['carts'] = items
                return render(request, "destilados.html", {"tipos": tipos, "products": products})