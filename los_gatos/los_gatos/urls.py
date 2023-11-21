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
from los_gatos.views import home, bebida, cerveza, otro
from los_gatos.views import transbanks, pagar, vino, destilado
from los_gatos.views import espumante, iniciar_sesion, usuario, registro,carts
from los_gatos.views.errorpage import error_404
from los_gatos.views import errorpage

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', home.index),
    path('home/', home.index),
    path('bebidas/', bebida.index),
    path('cervezas/', cerveza.index),
    path('otros/', otro.index),
    path('pagar/', pagar.index),
    path('vinos/', vino.index),
    path('destilados/', destilado.index),
    path('espumantes/', espumante.index),
    path('login/', iniciar_sesion.authentication),
    path('usuario/', usuario.index),
    path('registro/', registro.index),
    path('carts/', carts.load),
    path('webpay-plus-create', transbanks.index),
    path('commit-pay/', transbanks.commit_pay),
    path('error-401/', errorpage.error_401_page),
    path('error-403/', errorpage.error_403_page),
    path('error-404/', errorpage.error_404_page),
]
