from django.shortcuts import render, redirect
from los_gatos.models.models import  AuthUser, Productos
from django.contrib.auth.models import User
from typing import Iterable
import random
import logging
from django.shortcuts import redirect
from django.contrib import messages

def load(request):
    print("page building", flush=True)
    carts = []
    productos = []
    buy_order = str(random.randrange(1000000, 99999999))
    items = request.session.get('carts')
    total = 0
    try: 
        #Eliminar item
        if request.method == "POST": 
            id_producto = request.POST.get('prod_id')
            for item in items:
                if item['id_producto'] == id_producto:
                    if item['quantity'] > 1:
                        item['quantity'] -= 1
                        item['total'] = item['price'] * item['quantity']
                    else:
                        items.remove(item)
            request.session['carts'] = items
            request.session.save()
            if request.POST.get('action') == 'erase':
                # Elimina todos los productos del carrito en la sesión
                del request.session['carts']
                request.session.save()

        print('load carts')
        for item in items:
            print(f"aaaaa: {item}", flush=True)
            total = total + int(item['total'])
    except Exception as ex:
        print('Error: ', ex)
    return render(request, 'carts.html', {'productos': items, 'total': total})

def total(carts, productos):
    total = 0
    for cart in carts:
        for productos in productos:
            if productos.id_producto == cart.productos.id:
                total = total + cart.quantity * productos.precio
    return total

def load_carts(request):
    print('load carts from user')
    quantity = 0
    try:
        username = str(request.user)
        print('username: ', username)
        print('load user')
        user = AuthUser.objects.get(username=username)
        print('load carts')
        #carts = Carts.objects.filter(user=user)
        #for cart in carts:
        #    quantity = quantity + cart.quantity
    except Exception as ex:
        print('Error ', ex)
    print(f'quantity: {quantity}', flush=True)
    return quantity

#def clear_cart(request):
#    try:
#        # Elimina todos los productos del carrito en la sesión
#        del request.session['carts']
#        request.session.save()
#
#        # Opcional: Puedes mostrar un mensaje de éxito
#        messages.success(request, 'El carrito se ha limpiado correctamente.')
#
#    except KeyError:
#        # Si la clave 'carts' no está presente en la sesión, no hay nada que limpiar
#        pass
#
#    return redirect('carts.html')  # Reemplaza 'nombre_de_tu_vista_load' con el nombre real de tu vista 'load'

""" def add_product(id_producto, username):
    print('add product carts')
    try:
        print('find product')
        product = Productos.objects.get(id=id_producto)
        print('load product')
        print('find user')
        user = AuthUser.objects.get(username=username)
        print('load user')
        carts = None
        try:
            print('find carts')
            carts = Carts.objects.filter(user=user)
            print('load carts')
            is_producto = False
            #if isinstance(carts, Iterable):
            for cart in carts:
                if cart.producto.id == product.id:
                    print('add unity from product')
                    cart.quantity = cart.quantity + 1
                    cart.save(force_update=True)                
                    is_producto = True
            if is_producto == False: 
                print('add product from cart')
                cart = Carts()
                cart.user = user
                cart.product = product
                cart.quantity = 1
                cart.save()                                
        except Exception as ex:
            print('Error: ', ex)
    except Exception as ex:
        print('Error: ', ex) """

""" def delete_carts(user_id):
    print('delete_carts')
    try:
        user = AuthUser.objects.get(id=user_id)
        carts = Carts.objects.filter(user=user)
        #delete carts
        for cart in carts:
            cart.delete()
    except Exception as ex:
        print('Error: ', ex) """