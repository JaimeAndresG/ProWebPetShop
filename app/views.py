import email
from urllib import response
import requests #PERMITER LEER EL API
from django.shortcuts import render, redirect
from django.contrib import messages
from django.contrib.auth import authenticate, login
from django.contrib.auth.decorators import login_required, permission_required
from .models import *
from .forms import *
from django.contrib.auth.models import User


# Create your views here.

def index(request):
    productoTodos = Producto.objects.all()
    datos = {
        'form' : UserForm(),
        'listaProductos': productoTodos
    }
    if request.method == 'POST':
        formulario = UserForm(request.POST, files=request.FILES)
        if formulario.is_valid():
            formulario.save()
            datos['mensaje'] = 'Usuario guardado correctamente!'

    return render(request,'app/index.html',datos)

# PERMISOS


# ------------------PRODUCTO----------------------------
# AGREGAR\
@permission_required('app.add_producto')
def agregar_producto(request):
    datos = {
        'form' : ProductoForm()
    }
    if request.method == 'POST':
        formulario = ProductoForm(request.POST, files=request.FILES)
        if formulario.is_valid():
            formulario.save()
            datos['mensaje'] = 'Producto Guardado correctamente!'
            messages.success(request,'Producto guardado correctamente!')
        else:
            formulario.errors    
    return render(request, 'app/producto/agregar_producto.html',datos)

#LISTAR
@permission_required('app.view_producto')
def listar_productos(request):
    productoTodos = Producto.objects.all()
    datos ={
        'listaProductos': productoTodos
    }
    return render(request, 'app/producto/listar_producto.html',datos)

# MODIFICAR
@permission_required('app.change_producto')
def modificar_producto(request, codigo):
    producto = Producto.objects.get(codigo=codigo)
    datos = {
        'form' : ProductoForm(instance=producto)
    }
    if request.method == 'POST':
        formulario = ProductoForm(request.POST, files=request.FILES,instance=producto)
        if formulario.is_valid():
            formulario.save()
            messages.success(request,'Producto Editado correctamente!')
            datos['mensaje'] = 'Producto modificado correctamente!'
            datos['form'] = formulario
            
    return render(request, 'app/producto/modificar_producto.html',datos)  

# SECCION ELIMINAR
@permission_required('app.delete_producto')
def eliminar_producto(request, codigo):
    producto = Producto.objects.get(codigo=codigo)
    producto.delete()

    return redirect(to="listar_producto")



#Api-Mostrar
@login_required
def apimostrar(request):
    response2 = requests.get('https://digimon-api.vercel.app/api/digimon').json()
   
    datos ={
       
        'listaDigimon' : response2#['results']
        
    }
        
    return render(request, 'app/producto/api-mostrar.html',datos)

#Productos Api
@login_required
def productosapi(request):
    response = requests.get('http://127.0.0.1:8000/api/producto/').json()
    productoTodos = Producto.objects.all()
    carroTodos = Carrito.objects.all()
    datos ={
       
        'listaJson' : response,
        'carron': carroTodos
    }

    if request.method == 'POST':

        tipo = TipoProducto()
        tipo.tipo = request.POST.get('tipo')

        producto = Producto()
        producto.codigo = request.POST.get('codigo')
        producto.nombre = request.POST.get('nombre')
        producto.marca = request.POST.get('marca')
        producto.precio = request.POST.get('precio')
        producto.descripcion = request.POST.get('descripcion')
        producto.stock = request.POST.get('stock')
        producto.tipo = tipo
        producto.imagen = request.POST.get('imagen')
        
        producto.created_at = request.POST.get('created_at')
        producto.updated_at = request.POST.get('updated_at')

        carrito = Carrito()

        
        carrito.cantidad = 0

        if Carrito.objects.filter(producto=request.POST.get('codigo')).exists():
            
            for n in carroTodos:
                if n.producto.nombre == producto.nombre:

                    n.cantidad = n.cantidad + 1
                    
                    n.save()
            
        else:
            
            carrito.producto = producto
            carrito.cantidad = 1
            carrito.save()

        
        
    return render(request, 'app/producto/productos-api.html',datos)
#------------------------------------------------------------------------------------------

#------------------USER---------------------------------
@login_required
def user(request):

    vid = request.user.id
    productoTodos = Producto.objects.all()
    carroTodos = Carrito.objects.all()
    
    vid = request.user.id
    carroUser = Carrito.objects.filter(usuario=vid)
    datos ={
        'listaProductos': productoTodos,
        'carron': carroTodos,
        'id' : vid 
    }
    
  
    if request.method == 'POST':

        producto = Producto.objects.get(codigo=request.POST.get('codigo'))
        producto.stock=producto.stock-1
        producto.save()

        tipo = TipoProducto()
        tipo.tipo = request.POST.get('tipo')

        producto = Producto()
        producto.codigo = request.POST.get('codigo')
        producto.nombre = request.POST.get('nombre')
        producto.marca = request.POST.get('marca')
        producto.precio = request.POST.get('precio')
        producto.descripcion = request.POST.get('descripcion')
        producto.stock = request.POST.get('stock')
        producto.tipo = tipo
        producto.imagen = request.POST.get('imagen')
        
        producto.created_at = request.POST.get('created_at')
        producto.updated_at = request.POST.get('updated_at')

        carrito = Carrito()

        carrito.usuario = vid
        carrito.cantidad = 0
        var_estado = True
        if Carrito.objects.filter(producto=request.POST.get('codigo')).exists():
        
            
            for n in carroUser:
                if n.producto.nombre == producto.nombre:
                    n.cantidad = n.cantidad + 1                  
                    n.save()
                    var_estado = False
                
        else:
            
            carrito.producto = producto
            carrito.cantidad = 1
            carrito.save()
            var_estado = False


        if var_estado == True:
            carrito.producto = producto
            carrito.cantidad = 1
            carrito.save()
        
        
    return render(request, 'app/user/user.html',datos)


# CREACION DE USER
#PAGINA INDEX

def index(request):
    productoTodos = Producto.objects.all()
    datos = {
        'form' : UserForm(),
        'listaProductos': productoTodos
    }
    if request.method == 'POST':
        formulario = UserForm(request.POST, files=request.FILES)
        if formulario.is_valid():
            formulario.save()
            datos['mensaje'] = 'Usuario guardado correctamente!'

    return render(request,'app/index.html',datos)

#LISTAR
@permission_required('app.change_usuario')
def listar_user(request):
    userTodos = Usuario.objects.all()
    datos ={
        'listaUser': userTodos
    }
    return render(request, 'app/user/listar_user.html',datos)

#MODIFICAR
def modificar_user(request, run):
    user = Usuario.objects.get(run=run)
    datos = {
        'form' : UserForm(instance=user)
    }
    if request.method == 'POST':
        formulario = UserForm(request.POST, files=request.FILES,instance=user)
        if formulario.is_valid():
            formulario.save()
            datos['mensaje'] = 'Usuario modificado correctamente!'
            datos['form'] = formulario
            
    return render(request, 'app/user/modificar_user.html',datos)       
    
#ELIMINAR
def eliminar_user(request, run):
    user = Usuario.objects.get(run=run)
    user.delete()

    return redirect(to="listar_user")



#---------------CARRO--------------------
# VISTA CARRO
@login_required
def carrito(request,id):
    carroTodos = Carrito.objects.filter(usuario=id)

    stock = Producto.objects.all()
            
    datos ={
        'listaCarro': carroTodos,
        'usuario' : 0,
        'usr' : id
    }
    lista = carroTodos
    datos['total'] = 0

    #-- Logica de subscripcion
    usuario = request.user.email
    if Sub.objects.filter(email=usuario).exists():
        datos['usuario'] = 1
        for carro in lista:
            datos['totalsub'] = round((carro.producto.precio * carro.cantidad + datos['total'])*0.95)
            datos['total'] = carro.producto.precio * carro.cantidad + datos['total']
            datos['desc'] =round(datos['total']*0.05)

    else:
        for carro in lista:
             datos['total'] = carro.producto.precio * carro.cantidad + datos['total']


    if request.method == 'POST':

    
        for n in carroTodos:
            seguimiento = Seguimiento()

            seguimiento.codigo = n.codigo
            seguimiento.cantidad = n.cantidad
            seguimiento.producto = n.producto
            seguimiento.usuario = n.usuario
            seguimiento.estado = "Pago aprobado!"
            seguimiento.save()

            

            

          
    
        carroTodos.delete()
        datos['mensaje'] = 'pagado'
        messages.success(request,'Producto Pagado correctamente!')             


    return render(request, 'app/carrito/carrito.html',datos)   
#BORRAR
def eliminar_carrito(request, codigo):
    

    carrito = Carrito.objects.get(codigo=codigo)
    usuario = str(carrito.usuario)

    
    producto = Producto.objects.get(codigo=carrito.producto.codigo)
    producto.stock += carrito.cantidad 
    producto.save()

    carrito.delete()

    

    return redirect('/carrito/'+usuario)


# VISTA LOGIN
@login_required
def perfil(request):
    num_visitas = request.session.get('num_vistas',0)
    request.session['num_visitas'] = num_visitas + 1
    request.session.set_expiry(30)
    datos = {'visitas' : num_visitas}

    
    return render(request, 'app/perfil/perfil.html')

@login_required
def seguimiento(request):
    datos ={ }
    

    if request.method == 'POST':
        
        producto = Producto()
        producto.nombre = request.POST.get('nombre')
        producto.precio = request.POST.get('precio')
        producto.descripcion = request.POST.get('descripcion')
        producto.cantidad = request.POST.get('cantidad')
        estado = request.POST.get('estado')
        producto.imagen = request.POST.get('imagen')
        print(producto)
        datos["producto"]= producto
        datos["estado"] = estado





        
    return render(request, 'app/perfil//seguimiento.html',datos)

@login_required
def compras(request,id):

    seguimientoTodos = Seguimiento.objects.filter(usuario=id)
    datos ={
        'listaSeguimiento': seguimientoTodos
        
    }
    

    return render(request, 'app/perfil/compras.html',datos)



def register(request):
    datos = {
        'form' : UserCreationForm()  
    }
    if request.method == 'POST':
        formulario = UserCreationForm(data=request.POST)
        if formulario.is_valid():
            formulario.save()

           
            #user = authenticate(username=formulario.cleaned_data["username"],password=formulario.cleaned_data["password1"])
            #login(request,user)
            messages.success(request,'Registrado correctamente!')
            #return redirect(to="home")
        datos["form"] = formulario

    return render(request, 'registration/register.html', datos)

@login_required
def sub(request):
    
    datos = {
        'form' : SubForm(),
        'usuario' : 0
    }
    usuario = request.user.email
    if Sub.objects.filter(email=usuario).exists():
        datos['usuario'] = 1
  
    
    if request.method == 'POST':
        if request.POST.get('email') == 'nocaca':
            xd = Sub.objects.filter(email=usuario)
            xd.delete()
            datos['usuario'] = 0
        else:
            sub = Sub()
            sub.email = request.POST.get('email')
            sub.sub = True
            sub.save()
            datos['usuario'] = 1
        
    return render(request, 'app/user/sub.html',datos)


def listar_seguimiento(request):
    if request.method == 'POST':
        segui = Seguimiento.objects.get(codigo=request.POST.get('codigo'))
        segui.estado = request.POST.get('seleccion')
        segui.save()

    seguiTodos = Seguimiento.objects.all
    datos ={
        'seguiTodos': seguiTodos,
        'usuario' : 0
    }
   
        
        

    return render(request, 'app/perfil/listar_seguimiento.html',datos)


def eliminar_seguimiento(request, codigo):
    segui = Seguimiento.objects.get(codigo=codigo)
    segui.delete()

    return redirect(to="listar_seguimiento")
