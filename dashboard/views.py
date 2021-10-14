from email.message import Message
from os import name
from random import randint

from django.contrib.admin.decorators import action
from django.shortcuts import render, redirect, reverse
from django.http.response import HttpResponse, HttpResponseRedirect
from django.contrib import messages
from django.contrib.auth.models import User 
from django.contrib.auth import authenticate, login, logout
from dashboard.models import *
from django.core.mail import send_mail, EmailMessage
from django.conf import settings
# Create your views here.
def index(request):
    if not request.user.is_authenticated:
        return redirect("SuperLoginPage")
    return render(request, 'home.html')


def supersignup(request):
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
           u.is_superadmin = True
           u.save()
           admin = Signup.objects.create(name=name, email = email, password = password, phone = phone, user=u)
           return redirect('SuperLoginPage')
    return render(request, 'supersignup.html')

def superlogin(request):
    if request.method =="POST": 
        email = request.POST['email']
        password = request.POST['password']
        superadmin = authenticate(request, username=email, password=password)
        print(superadmin)
        if superadmin.is_superuser:
            login(request, superadmin)
            return redirect('PrintHome')
    return render(request, 'superlogin.html')

def superlogout(request):
    if request.user.is_authenticated:
        logout(request)
    return redirect('SuperLoginPage')

def adminsignup(request):
    if request.method == "POST":
         name = request.POST['name']
         email = request.POST['email']
         phone = request.POST['phone']
         password = request.POST['password']
         Email = User.objects.filter(email = email)
         if Email.exists():
            messages.success(request, 'Email is Already Registered')
         else:
           u = User.objects.create_user(username=email, email=email, password=password)
           u.is_admin = True
           u.save()
           admin = Admin.objects.create(name=name, email = email, password = password, phone = phone, user=u)
           return redirect('AdminLoginPage')
    return render(request, 'adminsignup.html')

def adminlogin(request):
    if request.method =="POST": 
        email = request.POST['email']
        password = request.POST['password']
        useradmin = authenticate(request, username=email, password=password)
        if useradmin.is_admin:
            login(request, useradmin)
            return redirect('PrintHome')
    return render(request, 'adminlogin.html')

def adminlogout(request):
    if request.user.is_authenticated:
        logout(request)
    return redirect('AdminLoginPage')

def mansignup(request):
    if request.method == "POST":
         name = request.POST['name']
         email = request.POST['email']
         phone = request.POST['phone']
         password = request.POST['password']
         Email = User.objects.filter(email = email)
         if Email.exists():
            messages.success(request, 'Email is Already Registered')
         else:
           u = User.objects.create_user(username=email, email=email, password=password)
           u.is_manager = True
           u.save()
           admin = Manager.objects.create(name=name, email = email, password = password, phone = phone, user=u)
           return redirect('ManagerLoginPage')
    return render(request, 'managersignup.html')

def manlogin(request):
    if request.method =="POST": 
        email = request.POST['email']
        password = request.POST['password']
        userman = authenticate(request, username=email, password=password)
        if userman.is_manager:
            login(request, userman)
            return redirect('PrintHome')
    return render(request, 'managerlogin.html')

def manlogout(request):
    if request.user.is_authenticated:
        logout(request)
    return redirect('ManagerLoginPage')


def opesignup(request):
    if request.method == "POST":
         name = request.POST['name']
         email = request.POST['email']
         phone = request.POST['phone']
         password = request.POST['password']
         Email = User.objects.filter(email = email)
         if Email.exists():
            messages.success(request, 'Email is Already Registered')
         else:
           u = User.objects.create_user(username=email, email=email, password=password)
           u.is_operationers = True
           u.save()
           admin = Operation.objects.create(name=name, email = email, password = password, phone = phone, user=u)
           return redirect('OperationLoginPage')
    return render(request, 'operationsignup.html')

def opelogin(request):
    if request.method =="POST": 
        email = request.POST['email']
        password = request.POST['password']
        userman = authenticate(request, username=email, password=password)
        if userman.is_operationers:
            login(request, userman)
            return redirect('PrintHome')
    return render(request, 'operationlogin.html')

def opelogout(request):
    if request.user.is_authenticated:
        logout(request)
    return redirect('OperationLoginPage')



def productform(request):
    subcate = SubCategory.objects.all()
    if request.method == "POST":
        subcategory = request.POST['subcategory']
        name = request.POST['name']
        slug = request.POST['slug']
        desc = request.POST['desc']
        price = request.POST['price']
        image = request.FILES['image']
        subcategory = SubCategory.objects.get(id = subcategory)
        SimpleProduct.objects.create(title=name, slug=slug, desc=desc, price = price, image=image, subcategory=subcategory)
        context = { 'subcate':subcate}
        return redirect('productsize')
    context = { 'subcate':subcate}
    return render(request, 'productform.html', context)

# def productview(request):
#     products = Product.objects.all()
#     size = ProductSize.objects.all()
#     color = ProductColor.objects.all()
#     type = ProductType.objects.all()
#     quantity = Productquantity.objects.all()
#     context = {'products':products, 'size':size, 'color':color, 'type':type, 'quantity':quantity}
#     return render(request, "addproduct.html", context)

# def addsize(request):
#     products = Product.objects.all()
#     if request.method == "POST":
#         product = request.POST['product']
#         size = request.POST['size']
#         product = Product.objects.get(id = product)
#         ProductSize.objects.create(product = product, size = size)
#     return render(request, "addsize.html", {'products':products})

def addbanner(request):
    if request.method == "POST":
        name = request.POST['name']
        image = request.FILES['image']
        Banner.objects.create(bannerTitle =name, bannerImage=image)
        return redirect('BannerPage')

def banner(request):
    banner = Banner.objects.all()
    return render(request, 'banner.html', {'banner':banner})

# def addcolor(request):
#     products = Product.objects.all()
#     if request.method == "POST":
#         product = request.POST['product']
#         color = request.POST['color']
#         product = Product.objects.get(id = product)
#         ProductColor.objects.create(product = product, color = color)
#     return render(request, "addcolor.html", {'products':products})

# def addtype(request):
#     products = Product.objects.all()
#     if request.method == "POST":
#         product = request.POST['product']
#         type = request.POST['type']
#         product = Product.objects.get(id = product)
#         ProductType.objects.create(product = product, type = type)
#     return render(request, "addtype.html", {'products':products})

# def addquantity(request):
#     products = Product.objects.all()
#     if request.method == "POST":
#         product = request.POST['product']
#         quantity = request.POST['quantity']
#         product = Product.objects.get(id = product)
#         Productquantity.objects.create(product = product, quantity = quantity)
#     return render(request, "quantity.html", {'products':products})


# def cuponcode(request):
#     product = Product.objects.all()
#     cupon = Cupon.objects.all()
#     return render(request, 'cuponcode.html', {'product':product, 'cupon':cupon})

def addcupon(request):
    if request.method == "POST":
        product = request.POST['product']
        code = request.POST['code']
        discount = request.POST['discount']
        product = SimpleProduct.objects.get(id = product)
        Cupon.objects.create(product=product, code = code, discount=discount)
        return redirect('CuponcodePage')


def send_gmail(request):
    if request.method == "POST":
        name = request.POST.get('name', '')
        subject = request.POST.get('subject', '')
        comment = request.POST.get('comment', '')
        from_email = settings.EMAIL_HOST_USER,
        email = EmailMessage(name, subject, comment, from_email, ['md7505013@gmail.com'])
        email.content_subtype = 'html'
        file = open("myfile.pdf", "rb")
        email.attach("myfile.pdf", file.read(), 'application/pdf')
        email.send()
        return HttpResponse("Successfully send")
    return render(request, "messsend.html")

def addblogcategory(request):
    if request.method == "POST":
        name = request.POST['name']
        title = request.POST['title']
        slug = request.POST['slug']
        desc = request.POST['desc']
        image = request.FILES['image']
        BlogCategory.objects.create(name=name, title=title, slug=slug, desc=desc, image=image)
        return redirect('BlogcategoryPage')

def blogcategory(request):
    blogcat = BlogCategory.objects.all()
    return render(request, 'blogcategory.html', {'blogcat':blogcat})


def Best_Seller(request):
    if request.method == "POST":
        product = request.POST["best_seller"]
        Best_Sellers.objects.create(prodcut=product)


def Trending_item(request):
    if request.method == "POST":
        product = request.POST["best_seller"]
        TrendingProduct.objects.create(prodcut=product)

def New_launches(request):
    if request.method == "POST":
        product = request.POST["best_seller"]
        Newlaunches.objects.create(prodcut=product)

def Remove_Product(request, ids):
    product = SimpleProduct.objects.get(id = ids).delete()
    return redirect('ProductViewPage')


def addproductselect(request):
    if request.method =="POST":
        prodcuttype = request.POST["producttype"]
        categorry = request.POST["category"]
        if prodcuttype=="simple":
            return redirect('addsimpleproduct', categorry)
        elif prodcuttype=="variable":
            return redirect('variableproduct', categorry)
    categ = Category.objects.all()
    simple = SimpleProduct.objects.all()
    vari = VariableProductAttributes.objects.all()
    context = {
        "categ":categ,
        "simple":simple,
        "vari":vari
    }
    return render(request, 'addproductselect.html', context)

icid = 1;
def simpleP(request, ids):
    if request.method == "POST":
        subcat = request.POST["subcat"]
        inventory = request.POST["inventory"]
        name = request.POST["name"]
        slug = request.POST["slug"]
        size = request.POST["size"]
        color = request.POST["color"]
        description = request.POST["description"]
        unit_Price = request.POST["unit_Price"]
        packing_charges = request.POST["packing_charges"]
        gstr = request.POST["gst"]
        unit_Weight = request.POST["unit_Weight"]
        product_gsm_type = request.POST["product_gsm_type"]
        product_vol_type = request.POST["product_vol_type"]
        image = request.POST.getlist("images")
        final_price = int(unit_Price) + int(packing_charges)
        product_type = "simple"


        sp = SimpleProduct.objects.create(subcategory_id=subcat,name=name,slug=slug,description=description,unit_price=unit_Price,
                                    packing_charges=packing_charges,gst_id=gstr,inventory=inventory,
                                     unit_Weight=unit_Weight,product_gsm_type_id=product_gsm_type,
                                     product_vol_type_id=product_vol_type, final_Price=final_price, size_id=size , color=color,product_type=product_type)
        sp.save()
        spid = sp.id
        for f in image:
            ic = simpleImage.objects.create(
                product_id=spid,
                image=f
            )

            ic.save()
            global icid;
            icid = ic.id

        cc = simpleAttribute.objects.create(image_id=icid,product_id=spid)
        cc.save()

        return redirect('addproductselect')


    subcateg = SubCategory.objects.filter(category=ids)
    volumetype = ProductVolumeType.objects.filter(category=ids)
    gsmtype = GsmType.objects.filter(category=ids)
    size = Sizes.objects.filter(category=ids)
    gsts = Gstglobal.objects.all()
    context = {
        "subcateg":subcateg,
        "volumetpe":volumetype,
        "gsmtype":gsmtype,
        "size":size,
        "gst":gsts
    }
    return render(request, 'addsimpleproduct.html',context)

def VariableP(request,ids):
    if request.method == "POST":
        subcategory = request.POST["subcategory"]
        name = request.POST["name"]
        slug = request.POST["slug"]
        desc = request.POST["desc"]
        image = request.FILES.getlist("images")
        inventory = request.POST["inventory"]
        product_type = "variable"
        vs = VariableProduct.objects.create(subcategory_id=subcategory,name=name, slug=slug,desc=desc,inventory=inventory,product_type=product_type
                                      )
        vs.save()
        idvp = vs.id
        for f in image:
            ic = variableImage.objects.create(
                product_id=idvp,
                image=f
            )

            ic.save()
        return redirect('variableattributes', idvp)
    subcat = SubCategory.objects.filter(category=ids)
    context = {
        "subcat":subcat
    }
    return render(request, 'variableSingleproduct.html', context)

gstrupee =1
product_cost_price =1
total_weight = 1
def attributeVariable(request, ids):
    if request.method == "POST":
        gsm_type = request.POST["gsm_type"]
        volume_type = request.POST["volume_type"]
        quantity = request.POST["quantity"]
        unit_Cost_price = request.POST["unit_Cost_price"]
        packing_charge = request.POST["packing_charge"]
        unit_weight = request.POST["unit_weight"]
        # product_margin = request.POST["product_margin"]
        size = request.POST["size"]
        color = request.POST["color"]
        gst = request.POST["gst"]

        global gstrupee,product_cost_price,total_weight
        gstrupee = int(gst)/100 * int(quantity)
        product_cost_price = int(quantity) * int(unit_Cost_price)
        total_weight = int(quantity)  * int(unit_weight)
        final_cost = int(product_cost_price) + int(packing_charge)
        product = ids
        prodimage = variableImage.objects.filter(product_id=ids)
        img = prodimage[0]
        atsave = VariableProductAttributes.objects.create(product_id=product, gsm_type_id=gsm_type, volume_type_id=volume_type,quantity=quantity,
                                                          unit_Cost_price=unit_Cost_price, packing_charge=packing_charge, unit_weight=unit_weight,
                                                          gst_id=gst, size_id=size, color=color, image_id=img.id)
        atsave.save()

        return redirect('variableattributes', ids)

    attribute = VariableProductAttributes.objects.filter(product_id=ids)
    prod = VariableProduct.objects.get(id=ids)
    cid = prod.subcategory.category.id
    prodimage = variableImage.objects.filter(product_id=ids)
    img = prodimage[0]
    gsm = GsmType.objects.filter(category_id=cid)
    vol = ProductVolumeType.objects.filter(category_id=cid)
    gstatt = Gstglobal.objects.all()
    size = Sizes.objects.filter(category_id=cid)
    context = {
        "attribute":attribute,
        "prod":prod,
        "img":img,
        "gsm":gsm,
        "vol":vol,
        "ids": ids,
        "gstrupee": gstrupee,
        "product_cost_price": product_cost_price,
        "total_weight": total_weight,
        "gst":gstatt,
        "size":size


    }
    return render(request, 'variableaddform.html', context)


def handleGroup(request):
    if request.method == "POST":
        hidtype = request.POST["hidden"]
        prod1 = request.POST["prod1"]
        prod2 = request.POST["prod2"]
        if hidtype == "sim12":
            ran1 = randint(1000, 100000000)
            s1 = simpgrp.objects.create(simple_id=prod1,uniqueid=ran1)
            s1.save()

            s2 = simpgrp.objects.create(simple_id=prod2, uniqueid=ran1)
            s2.save()
            return redirect('groupedproducts', ran1)
        elif hidtype == "var12":
            ran2 = randint(1000, 100000000)
            s1 = vargrp.objects.create(variable_id=prod1, uniqueid=ran2)
            s1.save()
            s2 = vargrp.objects.create(variable_id=prod2, uniqueid=ran2)
            s2.save()
            return redirect('groupedproducts', ran2)
        elif hidtype == "simvar":
            ran3 = randint(1000, 100000000)
            s1 = simpgrp.objects.create(simple_id=prod1, uniqueid=ran3)
            s1.save()
            s2 = vargrp.objects.create(variable_id=prod2, uniqueid=ran3)
            s2.save()
            return redirect('groupedproducts',ran3 )
        else:
            pass


def GroupP(request, ids):
    if request.method == "POST":
        simple = ids
        variable = ids
        slug = request.POST["slug"]
        description = request.POST["description"]
        final_price = request.POST["final_price"]
        volume_type = request.POST["volume_type"]
        packing_charge = request.POST["packing_charges"]
        unit_weight = request.POST["unit_weight"]
        product_margin = request.POST["product_margin"]
        gst = request.POST["gst"]
        gsave = GroupedProduct.objects.create(pid1=simple,pid2=variable,slug=slug,description=description, final_price=final_price,
                                      volume_type=volume_type, packing_charge=packing_charge,unit_weight=unit_weight,
                                      product_margin=product_margin, gst=gst)
        gsave.save()
        return redirect('allproductlist')




    contect = {

        "ids":ids

    }
    return render(request, 'groupproductadd.html', contect)


def addcategory(request):
    if request.method == "POST":
        name = request.POST['name']
        image = request.FILES['image']
        desc = request.POST['description']
        Category.objects.create(name=name,  image=image, catDesc=desc)
        return redirect('globalattributes')

def addsubcategories(request):
    if request.method == "POST":
        category = request.POST['category']
        name = request.POST['name']
        image = request.FILES['image']
        desc = request.POST['desc']
        SubCategory.objects.create(category_id=category, name=name,  image=image, desc=desc)
        return redirect('globalattributes')


def gsType(request):
    if request.method == "POST":
        cat = request.POST["category"]
        gsmtype = request.POST["gsmtype"]
        gs = GsmType.objects.create(category_id=cat,title=gsmtype)
        gs.save()
        return redirect('globalattributes')


def sizeglobal(request):
    if request.method == "POST":
        cat = request.POST["category"]
        size= request.POST["size"]
        gs = Sizes.objects.create(category_id=cat,size=size)
        gs.save()
        return redirect('globalattributes')

def gst(request):
    if request.method == "POST":
        gst1 = request.POST["gst"]
        gs = Gstglobal.objects.create(gst=gst1)
        gs.save()
        return redirect('globalattributes')

def voType(request):
    if request.method == "POST":
        cat = request.POST["category"]
        voltype = request.POST["voltype"]
        gs = ProductVolumeType.objects.create(category_id=cat,volumetype=voltype)
        gs.save()
        return redirect('globalattributes')



def globalAttributes(request):
    cate = Category.objects.all()
    context = {
        "cate":cate
    }
    return render(request,'addatributes.html', context)

def shopbycate(request):
    if request.method == "POST":
        cate = request.POST["cateid"]
        ca  = Shopbycategory.objects.create(category_id=cate)
        ca.save()
        return redirect('globalattributes')


def allProduct(request):
    var = VariableProduct.objects.all()
    sim = SimpleProduct.objects.all()
    grp = GroupedProduct.objects.all()
    sp = simpgrp.objects.all()
    vp = vargrp.objects.all()

    context = {
        "var":var,
        "sim":sim,
        "grp":grp,
        "sp":sp,
        "vp":vp
    }
    return render(request,'allproductslist.html', context)

def ExpressShipping(request):
    if request.method == "POST":
        shiping_city = request.POST['shiping_city']
        shiping_weight = request.POST['shiping_weight']
        shiping_charges = request.POST['shiping_charges']
        air_rate = request.POST['shiping_air_rate']
        ss = ShippingExpressGlobal.objects.create(shiping_city=shiping_city, shiping_weight=shiping_weight,shiping_charges=shiping_charges,
                                                  air_rate=air_rate)
        ss.save()
    return redirect('globalattributes')

def PlusShipping(request):
    if request.method == "POST":
        shiping_city = request.POST['shiping_city']
        shiping_weight = request.POST['shiping_weight']
        shiping_charges = request.POST['shiping_charges']
        ss = ShippingPlusGlobal.objects.create(shiping_city=shiping_city, shiping_weight=shiping_weight,shiping_price=shiping_charges)
        ss.save()
    return redirect('globalattributes')

def Coupon(request):
    if request.method == "POST":
        coupon_code = request.POST['coupon_code']
        discount_percent = request.POST['discount_percent']
        ss = CouponGlobaladd.objects.create(coupon_code=coupon_code,discount_percent=discount_percent)
        ss.save()
    return redirect('globalattributes')