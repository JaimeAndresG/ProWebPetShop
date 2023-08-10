from unicodedata import name
from django.urls import path
from .views import *

urlpatterns = [
    path('', index, name="index"),
    path('user/', user, name="user"),
    path('perfil/', perfil, name="perfil"),
    path('seguimiento/', seguimiento, name="seguimiento"),
    path('listar_seguimiento/', listar_seguimiento, name="listar_seguimiento"),
    path('compras/<id>', compras, name="compras"),
    path('carrito/<id>/', carrito, name="carrito"),
    path('agregar_producto/',agregar_producto, name="agregar_producto"),
    path('modificar_producto/<codigo>/',modificar_producto, name="modificar_producto"),
    path('modificar_user/<run>/',modificar_user, name="modificar_user"),
    path('eliminar_producto/<codigo>/', eliminar_producto, name="eliminar_producto"),
    path('eliminar_carrito/<codigo>/', eliminar_carrito, name="eliminar_carrito"),
    path('eliminar_seguimiento/<codigo>/', eliminar_seguimiento, name="eliminar_seguimiento"),
    path('eliminar_user/<run>/', eliminar_user, name="eliminar_user"),
    path('listar_producto/',listar_productos, name="listar_producto"),
    path('listar_user/',listar_user, name="listar_user"),
    path('register/', register, name = 'register'),
    path('productos-api/', productosapi, name= 'productos-api'),
    path('api-mostrar/', apimostrar, name= 'api-mostrar'),
    path('sub/', sub, name='sub'),
    
    
  


]



