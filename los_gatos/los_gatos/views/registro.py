from django.shortcuts import render
from django.http import HttpResponse
from los_gatos.models.models import AuthUser
from time import timezone
from django.contrib.auth.models import User
from django.contrib import messages

def index(request):
    if request.method == "POST":
        username = request.POST.get('username', '')
        fullname = request.POST.get('fullname', '')
        lastname = request.POST.get('lastname', '')
        email = request.POST.get('email', '')
        password = request.POST.get('password', '')
        confirm_password = request.POST.get('confirm_password', '')
        agree = request.POST.get('agree', '')

        # Validar si el nombre de usuario ya existe
        if User.objects.filter(username=username).exists():
            messages.error(request, 'El nombre de usuario ya está en uso.')
            return render(request, "registrate.html")

        crear_usuario(username, password, fullname, lastname, email)
        return render(request, "sesion.html")
    else:
        return render(request, "registrate.html")

def crear_usuario(username, password, fullname, lastname, email):
    nuevo_usuario = User(
        password=password,
        is_superuser=0,
        username=username,
        first_name=fullname,
        last_name=lastname,
        email=email,
        is_staff=0,
        is_active=1,
    )

    nuevo_usuario.save()


# Create your views here.
#def index(request):
 #   if request.method == "POST":
  #      username = request.POST.get('username', '')
   #     fullname = request.POST.get('fullname', '')
    #    lastname = request.POST.get('lastname', '')
     #   email = request.POST.get('email', '')
      #  password = request.POST.get('password', '')
       # confirm_password = request.POST.get('confirm_password', '')
        #agree = request.POST.get('agree', '')
        #crear_usuario(username, password, fullname, lastname, email)
        #return render(request, "sesion.html")
    #else:
    #    return render(request, "registrate.html")
    
#def crear_usuario(username, password, fullname, lastname, email):
  # nuevo_usuario = AuthUser(
  #  password=password, 
   # is_superuser=0,
   # username=username,
   # first_name=fullname,
   # last_name=lastname,
   # email=email,
   # is_staff=0,
   # is_active=1,
   # )

    #nuevo_usuario.save()