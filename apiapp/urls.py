# Corresponde a las urls que se utilizaran
from django.urls import path, include
from rest_framework import routers
from .views import * 



router = routers.DefaultRouter()
router.register('producto', ProductoViewSet)
router.register('tipoproducto', TipoProductoViewSet)
router.register('sub', SubViewSet)
router.register('usuario', UsuarioViewSet)



urlpatterns = [

    path('api/', include(router.urls)),



]