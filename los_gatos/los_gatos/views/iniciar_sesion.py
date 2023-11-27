from django.shortcuts import redirect, render
from django.contrib.auth.decorators import login_required
from django.contrib.auth import login
from django.contrib.auth.backends import ModelBackend
from los_gatos.util.autogenerate import generate
from los_gatos.models.models import Productos, AuthUser
from django.core.serializers import serialize

def loadLogin(request):
    return render(request, 'sesion.html')

def authentication(request):
    products = Productos.objects.all()
    user = []    
    if request.method == 'POST':
        try:
            username = request.POST.get('username')
            password = request.POST.get('password')
            print(username, flush=True)
            print(password, flush=True)
            user = AuthUser.objects.get(username=username)
            print(f"User: {user}", flush=True)
            login(request, user)
            if user is not None:
                print("Inicio de sesión exitoso.", flush=True)
            else:
                print("Nombre de usuario o contraseña incorrectos.", flush=True)
            request.session['user'] = serialize('json', user)
            request.session.save()
        except Exception as e:
            print(f'Error: {e}', flush=True)
    return render(request, "index.html", {"products": products, "user:": user})       

def authorization(request, perm):
    print('authorization | user -> ', request.user)

    if request.user != None and request.user.__str__() != 'AnonymousUser':
        if request.user.has_perm(perm):
            print('Authorized')
            return True, ''
        else:
            print('Forbidden')
            return False, '/error-403/'
    else:
        print('Unauthorized')
        return False, '/error-401/'

def send_mail_recovery_pass(username):
    return None

def recovery_pass(request):
    print('new key', generate(32))
    return None                             

def get_user(request, usernamex, password):
    try:
        return AuthUser.objects.get(username=usernamex)
    except AuthUser.DoesNotExist:
        return None
    
def authenticate(request, username, password):
        user = []
        try:
            x = get_user(request, username, password)
            user = x
            print(f"Userxxxx: {x}", flush=True)
        except AuthUser.DoesNotExist:
            print("No existe User", flush=True)
            return None
        return user