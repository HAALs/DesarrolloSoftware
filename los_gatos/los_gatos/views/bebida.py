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
    return render(request, 'bebidas.html', {'bebidas' : load_product(), 'quantity': carts.load_carts(request)})

def load_product():
    return Productos.objects.all()

# Create your views here.
def index(request):
    print(f'request.method: {request.method}')
    if request.method == 'GET': 
        tipos = SubTipoProducto.objects.filter(id_sub_tipo_producto__in=[1,2])
        products = Productos.objects.filter(id_tipo_producto='1')
        return render(request, "bebidas.html", {"tipos": tipos, "products": products})
    else: 
        tipo = request.POST.get('tipo')
        print(f'tipo: {tipo}')
        tipos = SubTipoProducto.objects.filter(id_sub_tipo_producto__in=[1,2])
        products = Productos.objects.filter(id_sub_tipo_producto=tipo)
        return render(request, "bebidas.html", {"tipos": tipos, "products": products})