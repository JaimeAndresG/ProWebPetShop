from django.shortcuts import render
from app.models import Producto
from rest_framework import viewsets
from .serializer import *


# Create your views here.

class ProductoViewSet(viewsets.ModelViewSet):
    queryset = Producto.objects.all()
    serializer_class = ProductoSerializer

class TipoProductoViewSet(viewsets.ModelViewSet):
    queryset = TipoProducto.objects.all()
    serializer_class = TipoProductoSerializer

class SubViewSet(viewsets.ModelViewSet):
    queryset = Sub.objects.all()
    serializer_class = SubSerializer

class UsuarioViewSet(viewsets.ModelViewSet):
    queryset = Usuario.objects.all()
    serializer_class = UsuarioSerializer
