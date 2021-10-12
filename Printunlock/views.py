from email import message
from email.message import Message
from django.contrib.admin.decorators import action
from django.contrib.sites import requests
from django.http.request import HttpRequest
from django.shortcuts import render, redirect, reverse
from django.http.response import HttpResponse, HttpResponseRedirect
from django.contrib import messages
from django.contrib.auth.models import User 
from django.contrib.auth import authenticate, login, logout
from dashboard.models import *
from Printunlock.models import *
from django.core.mail import send_mail, EmailMessage
from django.conf import settings
import math, random
# import requests
import json
from django.db.models import Q


# Create your views here.
def customerindex(request):
    category = Category.objects.all()[:8]
    banner = Banner.objects.all()
    trendcate = Shopbycategory.objects.all()
    blog = BlogCategory.objects.all()
    testo = testonomial.objects.all()
    product = SimpleProduct.objects.all()[:10]
    best_Seller =Best_Sellers.objects.all()[:4]
    cupon = Cupon.objects.all()
    context = {'category':category,
               'banner':banner,
               'blog':blog,
               'testo':testo,
               'product':product,
               'cupon':cupon,
               'best_seller':best_Seller,
               'trendcate':trendcate
               }
    return render(request, "homepage.html", context)


def custosignup(request):
    if request.method == "POST":
         name = request.POST['name']
         email = request.POST['email']
         phone = request.POST['phone']
         password = request.POST['password']
         Email = User.objects.filter(email = email)
         if Email.exists():
            messages.success(request, 'Email is Already Registered')
         else:
           u = User.objects.create_user(username=email, first_name= name, email=email, password=password)
           u.is_customer = True
           u.save()
           admin = Customer.objects.create(name=name, email = email, password = password, phone = phone, user=u)
           return redirect('CustomerLoginPage')
    return render(request, 'customersignup.html')

def cuslogin(request):
    if request.method =="POST": 
        email = request.POST['email']
        password = request.POST['password']
        userman = authenticate(request, username=email, password=password)
        if userman.is_customer:
            login(request, userman)
            return redirect('PrintlookHome')
    return render(request, 'customerlogin.html')

def cuslogout(request):
    if request.user.is_authenticated:
        logout(request)
    return redirect('CustomerLoginPage')

def otp(request):
    return render(request, 'otp.html')

def forgotpassword(request):
    return render(request, "forget-password.html")

def generateOTP() :
     digits = "0123456789"
     OTP = ""
     for i in range(4) :
         OTP += digits[math.floor(random.random() * 10)]
     return OTP

def send_otp(request):
    if request.method == "POST":
        email=request.POST["email"]
        o=generateOTP()
        htmlgen = '<p>Your OTP is <strong>'+o+'</strong></p>'
        send_mail('OTP request',o, settings.EMAIL_HOST_USER, [email],fail_silently=False,html_message=htmlgen)
        return HttpResponse(o)
    return render(request, "sendotp.html")

def categorycustomer(request):
    category = Category.objects.all()
    context = {
        "category":category
    }
    return render(request, "category1.html",context )

# def productdetail(request, ids):
#     product = VariableProductAttributes.objects.get(product__subcategory_id = ids)
#     context = {'product':product
#                }
#     return render(request, "product-detail.html", context)

def simpleProductDetail(request, ids):
    sp = SimpleProduct.objects.get(id=ids)
    image = simpleImage.objects.filter(product_id=ids)
    size = Sizes.objects.filter(category_id=sp.subcategory.category.id)
    gsm = GsmType.objects.filter(category_id=sp.subcategory.category.id)
    context = {
        "sp":sp,
        "image":image,
        "size":size,
        "gsm":gsm
    }
    return render(request,"product-detail.html",context)

def variableProductDetail(request, ids):
    vp  = VariableProduct.objects.get(id=ids)
    vpa = VariableProductAttributes.objects.filter(product_id=ids)
    image = variableImage.objects.filter(product_id=ids)
    size = Sizes.objects.filter(category_id=vp.subcategory.category.id)
    gsm_type = GsmType.objects.filter(category_id=vp.subcategory.category.id)
    print(image)
    context = {
        "vp":vp,
        "vpa":vpa,
        "image":image,
        "size":size,
        "gsm":gsm_type

    }
    return render(request,"variableproductdetail.html",context)


def GroupProductsDetails(request,ids):
    gp = GroupedProduct.objects.get(id=ids)
    vgp = vargrp.objects.get(uniqueid=gp.pid2)
    sgp = simpgrp.objects.get(uniqueid=gp.pid1)
    vimage = variableImage.objects.filter(product_id=vgp.variable.product.id)[:2]
    simage = simpleImage.objects.filter(product_id=sgp.simple.id)[:2]
    context = {
        "gp":gp,
        "vgp":vgp,
        "sgp":sgp,
        "vimage":vimage,
        "simage":simage
    }
    return render(request, 'groupedproductdetails.html', context)

def GroupProductsShow(request):
    gp = GroupedProduct.objects.all()
    vgp = vargrp.objects.all()
    sgp = simpgrp.objects.all()
    context = {
        "gp":gp,
        "vgp":vgp,
        "sgp":sgp
    }
    return render(request, 'groupproductslist.html', context)

def productviewcus(request, ids):
    varproduct = VariableProductAttributes.objects.filter(product__subcategory_id=ids)
    simprod = simpleAttribute.objects.filter(product__subcategory_id=ids)
    print(varproduct)
    print(simprod)
    context = {
        'product':varproduct,
        'simprod':simprod,
    }
    return render(request, "products.html", context)

def subcategory_view(request, ids):
    subcategory = SubCategory.objects.filter(category_id = ids)
    context = {
        'subcategory':subcategory
    }
    return render(request, "subcategory.html", context)

# def guestsignup(request):
#     if request.method == "POST":
#          email = request.POST['email']
#          password = request.POST['password']
#          Email = User.objects.filter(email = email)
#          if Email.exists():
#             messages.success(request, 'Email is Already Registered')
#          else:
#            u = User.objects.create_user(username=email, email=email, password=password)
#            u.is_guest = True
#            u.save()
#            admin = guest.objects.create(email = email, password = password, user=u)
#            return redirect('guestlogin')
#     return render(request, 'guestsignup.html')
#
# def guestlogin(request):
#     if request.method =="POST":
#         email = request.POST['email']
#         password = request.POST['password']
#         userman = authenticate(request, username=email, password=password)
#         if userman.is_guest:
#             login(request, userman)
#             return redirect('CartPage')
#     return render(request, 'guest.html')


def CartPro(request):
    if request.method == "POST":
        user = request.user.id
        prod = request.POST["prod"]
        prodid = request.POST["prodid"]
        size= request.POST["size"]
        quality = request.POST["quality"]
        quantity = request.POST["quantity"]
        file = request.POST.getlist("myfile")
        if prod == "simple":
            sc = Cartsimple.objects.create(user_id=user,product_id=prodid,size=size, quality=quality, quantity=quantity)
            sc.save()
            for i in file:
                cf = cartSimleFile.objects.create(
                    cartitem_id=sc.id,
                    file=i
                )
                cf.save()
        elif prod == "variable":
            vc = CartVariable.objects.create(user_id=user,product_id=prodid,size=size, quality=quality, quantity=quantity)
            vc.save()
            for i in file:
                cf = cartSimleFile.objects.create(
                    cartitem_id=vc.id,
                    file=i
                )
                cf.save()
        else:
            gc = CartGrouped.objects.create(user_id=user,product_id=prodid,size=size, quality=quality, quantity=quantity)
            gc.save()
            for i in file:
                cf = cartSimleFile.objects.create(
                    cartitem_id=gc.id,
                    file=i
                )
                cf.save()
        return redirect('cartpro')

    cartsimp = Cartsimple.objects.filter(user_id=request.user.id)
    cimp = cartsimp[0].product.id
    simimage = simpleImage.objects.filter(product_id=cimp)
    cartvar = CartVariable.objects.filter(user_id=request.user.id)
    cartgroup = CartGrouped.objects.filter(user_id=request.user.id)
    context = {
        "cartsimp":cartsimp,
        "cartvar":cartvar,
        "cartgroup":cartgroup,
        "simimiage":simimage
    }
    print(request.user.is_superuser)
    return render(request, 'cart.html', context)

# def addtocart(request):
#     if request.method == "POST":
#         prid = request.POST['prid']
#         size = request.POST['size']
#         paper = request.POST['paper']
#         price = request.POST['price']
#         quantity = request.POST['quantity']
#         file = request.FILES['file']
#         for i in file:
#             ca = cartFile.objects.create(
#                 cartitem_id=prid,
#                 file = i
#             )
#             ca.save()
#         sizes = ProductSize.objects.get(id = size)
#         papers = ProductType.objects.get(id = paper)
#         product = SimpleProduct.objects.get(id = prid)
#         if request.user.is_authenticated:
#               gu = guest.objects.filter(user=request.user).first()
#               items = Cart.objects.filter(guest = gu, product = product)
#               if items.exists():
#                   cartitem = Cart.objects.get(guest = gu, product = product)
#                   cartitem.quantity += 1
#                   cartitem.save()
#               else:
#
#                 Cart.objects.create(guest = gu, product = product, file=file, type=papers, size=sizes, costprice=price, quantity=quantity)
#         else:
#            messages.error(request, 'Please first Login.')
#            return redirect("guestlogin")
#
#     return HttpResponseRedirect(reverse('CartPage'))
#
# def removecart(request):
#     if request.method == "POST":
#         prid = request.POST['prid']
#         item = Cart.objects.filter(product = prid)
#         item.delete()
#     return HttpResponseRedirect(reverse('CartPage'))
#
#
# def removeitemcart(request):
#     if request.method == "POST":
#         prid = request.POST['prid']
#         item = Cart.objects.get(id = prid)
#         if item.quantity == 1:
#             item.delete()
#         else:
#             item.quantity -= 1
#             item.costprice = item.product.price * item.quantity
#             item.save()
#     return HttpResponseRedirect(reverse('CartPage'))
#
# def additemcart(request):
#     if request.method == "POST":
#         prid = request.POST['prid']
#         item = Cart.objects.get(id = prid)
#         item.quantity += 1
#         item.costprice = item.product.price * item.quantity
#         item.save()
#     return HttpResponseRedirect(reverse('CartPage'))
#
# def cartshow(request):
#     if request.user.is_authenticated:
#         gu = guest.objects.filter(user=request.user).first()
#         global cart;
#
#     return render(request, "cart.html", {
#             'cart': cart
#         })

def cartitem(request):
    if request.method == "POST":
        cart_id = request.POST.getlist('cart_id')
        gu = guest.objects.filter(user=request.user).first()
        for id in cart_id:
            item = Cart.objects.get(id = id)
            Cartitem.objects.create(guest = gu, items = item)
    return HttpResponseRedirect(reverse('checkout'))

def buynow(request):
    if request.method == "POST":
        prid = request.POST['prid']
        cart = request.session.get('cart')
        if cart:
            quantity = cart.get(prid)
            if quantity:
                  cart[prid] = quantity + 1
            else:
               cart[prid] = 1 
        else:
            cart = {}
            cart[prid] = 1
        request.session['cart'] = cart
        print(request.session['cart'])
        return redirect('PrintlookHome')




def checkout(request):
    if request.user.is_authenticated:
        gue = guest.objects.filter(user=request.user).first()
        item = Cartitem.objects.filter(guest = gue)
    return render(request, "checkout.html", {'item':item})

def order(request):
    if request.method == "POST":
        prid = request.POST.getlist('prid')
        subtotal = request.POST['subtotal']
        gstamount = request.POST['gstamount']
        packaging = request.POST['packaging']
        grandtotal = request.POST['grandtotal']
        firstname = request.POST['firstname']
        lastname = request.POST['lastname']
        email = request.POST['email']
        phone = request.POST['phone']
        country = request.POST['country']
        address = request.POST['address']
        city = request.POST['address']
        town = request.POST['town']
        pincode = request.POST['pincode']
        if request.user.is_authenticated:
             gue =guest.objects.filter(user=request.user).first()
             order = Order.objects.create(guest= gue, orderitem=prid, subtotal=subtotal, gst=gstamount, packaging=packaging,
                                            grandtotal=grandtotal, firstname=firstname, lastname=lastname, email = email, phone=phone, country=country,
                                            address=address, city=city, town=town, pincode=pincode)
             for id in prid:
                  cart_id= Cart.objects.get(id = id)
                  Ordercart.objects.create(cart=cart_id, order=order, guest=gue)
             url = "https://api.cashfree.com/api/v1/order/create"
             payload = {
             "appId": "132628c49e909479610a519e17826231",
             "secretKey" : "060cf8761daed00af7a2c73427162e2720aa914b",
             "orderId": order.id,
             "orderAmount": order.grandtotal,
             "orderCurrency": "INR",
             "customerEmail": order.email,
             "customerName": order.lastname,
             "customerPhone": order.phone,
             "returnUrl": "https://cashfree.com",
             "notifyUrl" : ""
            }
             response = requests.request("POST", url, data = payload)
             res=json.loads(response.text)
             if(res['status']=="OK"):
                   return redirect(res['paymentLink'])
    return HttpResponseRedirect(reverse("https://payments.cashfree.com/order/#nt6eEO9ZNz6DpGgYNUL2"))


        

def cusdash(request):
    if request.user.is_authenticated:
           gue = guest.objects.filter(user=request.user).first()
           item = Ordercart.objects.filter(guest = gue) 
           order = Order.objects.filter(guest=gue)  
    return render(request, "dashboard.html", {'item':item, 'order':order})

def contact(request):
    if request.method == "POST":
        username = request.POST['username']
        email = request.POST['email']
        phone = request.POST['phone']
        message = request.POST['message']
        testonomial.objects.create(name = username, email=email, phone=phone, desc=message)
        return redirect('PrintlookHome')
    return render(request, 'contact.html')

def search_match(query, i):
    if (query.lower() in i.title.lower()):
        return True
    else:
        return False

def search(request):
    if request.method == "POST":
        query = request.POST.get("query")
        srh = SimpleProduct.objects.all()
        prd = [i for i in srh if search_match(query, i)]
        if len(prd) != 0:
            d = {"prd": prd, }
            return render(request, "search.html", d)
        else:
            prd1 = len(prd)
            print(prd1)
            d = {"prd1": prd1 }
            messages.error(request, "no products found")
            return render(request, 'search.html', d)

    else:
        messages.error(request, "no products found")
        return render(request, 'search.html')
    # except:
    #     messages.error(request, "search by zipcode, hostelname,or city name etc")
    #     # return redirect('hostels')

# def search(request):
#     if request.method == "POST":
#         search = request.POST.get('search')
#         product = Product.objects.filter(Q(title = search))
#     return render(request, 'search.html', {'product':product})
