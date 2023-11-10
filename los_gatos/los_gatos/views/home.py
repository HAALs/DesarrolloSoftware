from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
def index(request):
    
    product = {
        'title': 'titulo ejemplo',
        'subtitle': 'subtitulo ejemplo',
        'detail': 'detalle .....',
        'link_izquierdo': 'link 1',
        'link_derecho': 'link 2'

    }
    products = [product, product, product, product, product, product]
    return render(request, "index.html", {'products': products})