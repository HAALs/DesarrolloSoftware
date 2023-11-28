from django.contrib import admin
from django.urls import path
from django.contrib.auth import views as auth_views
from los_gatos.views import home, bebida, cerveza, otro
from los_gatos.views import transbanks, pagar, vino, destilado
from los_gatos.views import espumante, iniciar_sesion, usuario, registro,carts
from los_gatos.views.errorpage import error_404
from los_gatos.views import errorpage
from los_gatos.views import buscar_productos
from los_gatos.views.iniciar_sesion import ProfilePasswordChangeView
from django.contrib.auth.decorators import login_required




urlpatterns = [
    path('buscar/', buscar_productos.find_productos),
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
    path('login/', iniciar_sesion.loadLogin),
    path('iniciar-sesion/', iniciar_sesion.authentication),
    path('usuario/', usuario.index),
    path('registro/', registro.index),
    path('carts/', carts.load),
    path('webpay-plus-create', transbanks.index),
    path('commit-pay/', transbanks.commit_pay),
    path('error-401/', errorpage.error_401_page),
    path('error-403/', errorpage.error_403_page),
    path('error-404/', errorpage.error_404_page),
    path('password_change/', login_required(ProfilePasswordChangeView.as_view()), name='profile_password_change'),
]
