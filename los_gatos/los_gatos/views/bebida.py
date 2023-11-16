from django.shortcuts import render
from django.http import HttpResponse
from los_gatos.models.models import TipoProducto, Productos, SubTipoProducto

# Create your views here.
def index(request):
    print(f'request.method: {request.method}')
    if request.method == 'GET': 
        tipos = SubTipoProducto.objects.all()
        products = Productos.objects.filter(id_tipo_producto='1')
        return render(request, "bebidas.html", {"tipos": tipos, "products": products})
    else: 
        tipo = request.POST.get('tipo')
        print(f'tipo: {tipo}')
        tipos = SubTipoProducto.objects.all()
        products = Productos.objects.filter(id_sub_tipo_producto=tipo)
        return render(request, "bebidas.html", {"tipos": tipos, "products": products})