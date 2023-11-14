from django.shortcuts import render
from django.http import HttpResponse
from los_gatos.models.Model import Productos

# Create your views here.
def index(request):
    
    products = Productos.objects.all()
    print('products:', len(products))
    return render(request, "index.html", {'products': products})