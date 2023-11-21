from django.shortcuts import render, redirect
from los_gatos.models.models import  AuthUser, Productos
from los_gatos.views.iniciar_sesion import authorization
from django.contrib.auth.models import User
from typing import Iterable
import random

def load(request):
    #auth, error = authorization(request, 'view_carts')
    #if not auth:
        #return redirect(error)  
    print('page building')
    carts = []
    productos = []
    buy_order = str(random.randrange(1000000, 99999999))
    try: 
        #username = str(request.user)
        #print('username: ', username)
        #print('load user')
        #user = AuthUser.objects.get(username=username)
        #session_id = str(user.id)    
        print('load carts')
        items = request.session.get('carts')
        print('items: {items}')
        total=0
        for item in items:
            total = total + int(item['total'])
        #carts = Carts.objects.filter(user=user)
        #for cart in carts:
        #    try:
        #        productos.append(Productos.objects.get(id=cart.productos.id))
        #    except Exception as ex:
        #        print('Error: ', ex)
        #        print('not stock productos id -> ', cart.id)
    except Exception as ex:
        print('Error: ', ex)
    #return render(request, 'carts.html', {'carts': carts, 'productos': productos, 'stock': load_carts(request), 'total': total(carts, productos), 'buy_order': buy_order, 'session_id': session_id})
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
        carts = Carts.objects.filter(user=user)
        for cart in carts:
            quantity = quantity + cart.quantity
    except Exception as ex:
        print('Error ', ex)
    print('quantity: ', quantity)
    return quantity

def add_product(id_producto, username):
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
        print('Error: ', ex)

def delete_carts(user_id):
    print('delete_carts')
    try:
        user = AuthUser.objects.get(id=user_id)
        carts = Carts.objects.filter(user=user)
        #delete carts
        for cart in carts:
            cart.delete()
    except Exception as ex:
        print('Error: ', ex)