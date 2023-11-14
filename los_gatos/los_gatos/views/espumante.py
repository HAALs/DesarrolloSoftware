from django.shortcuts import render
from django.http import HttpResponse
from los_gatos.models.models import TipoProducto, Productos

# Create your views here.
def index(request):
    print(f'request.method: {request.method}')
    if request.method == 'GET': 
        tipos = TipoProducto.objects.all()
        products = Productos.objects.all()
        return render(request, "espumantes.html", {"tipos": tipos, "products": products})
    else: 
        tipo = request.POST.get('tipo')
        print(f'tipo: {tipo}')
        tipos = TipoProducto.objects.all()
        products = Productos.objects.filter(id_tipo_producto=tipo)
        return render(request, "espumantes.html", {"tipos": tipos, "products": products})