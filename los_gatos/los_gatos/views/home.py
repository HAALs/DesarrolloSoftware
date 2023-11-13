from django.shortcuts import render
from django.http import HttpResponse
from los_gatos.models.Model import Productos

# Create your views here.
def index(request):
    
    product = Productos.objects.all()
    return render(request, "index.html", {'product': product})