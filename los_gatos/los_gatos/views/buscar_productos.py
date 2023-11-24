from django.shortcuts import render
from los_gatos.models.models import Productos

def find_productos(request):
    query = request.GET.get('q')  # Obtiene el término de búsqueda desde la URL
    resultados = []

    if query:
        # Realiza la búsqueda de productos por nombre
        resultados = Productos.objects.filter(nombre_producto__icontains=query)

    return render(request, 'buscar_productos.html', {'resultados': resultados, 'query': query})
