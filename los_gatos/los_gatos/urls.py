"""los_gatos URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from los_gatos.views import home, bebida, cerveza, otro, transbanks, pagar, vino, destilado, espumante, señal_pago, iniciar_sesion, usuario

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', home.index),
    path('home/', home.index),
    path('bebidas/', bebida.index),
    path('cervezas/', cerveza.index),
    path('otros/', otro.Otros),
    path('transbank/', transbanks.index),
    path('pagar/', pagar.index),
    path('vinos/', vino.index),
    path('destilados/', destilado.index),
    path('espumantes/', espumante.index),
    path('pagando/', señal_pago.index),
    path('iniciar sesión/', iniciar_sesion.index),
    path('usuario/', usuario.index),
]
