from django.db import models
from django.contrib.auth.models import AbstractUser

# Create your models here.
class User(AbstractUser):
    is_superadmin = models.BooleanField(default=False)
    is_admin = models.BooleanField(default=False)
    is_manager = models.BooleanField(default=False)
    is_operationers = models.BooleanField(default=False)
    is_customer = models.BooleanField(default=False)
    is_guest = models.BooleanField(default=False, null=True)

class Signup(models.Model):
    added_date = models.DateTimeField(auto_now_add=True,null=True)
    user = models.OneToOneField(User, on_delete=models.CASCADE, primary_key=True)
    name = models.CharField(max_length=200,null= True)
    email = models.CharField(max_length=200)
    phone = models.CharField(max_length=12, null=True)
    password = models.CharField(max_length=20, null=True)
    
    def isExists(self):
        if Signup.objects.filter(email = self.email):
            return True
        return  False

class Admin(models.Model):
    added_date = models.DateTimeField(auto_now_add=True,null=True)
    user = models.OneToOneField(User, on_delete=models.CASCADE, primary_key=True)
    name = models.CharField(max_length=200,null= True)
    email = models.CharField(max_length=200)
    phone = models.CharField(max_length=12, null=True)
    password = models.CharField(max_length=20, null=True)
    
    def isExists(self):
        if Admin.objects.filter(email = self.email):
            return True
        return  False

class Manager(models.Model):
    added_date = models.DateTimeField(auto_now_add=True,null=True)
    user = models.OneToOneField(User, on_delete=models.CASCADE, primary_key=True)
    name = models.CharField(max_length=200,null= True)
    email = models.CharField(max_length=200)
    phone = models.CharField(max_length=12, null=True)
    password = models.CharField(max_length=20, null=True)
    
    def isExists(self):
        if Manager.objects.filter(email = self.email):
            return True
        return  False

class Operation(models.Model):
    added_date = models.DateTimeField(auto_now_add=True,null=True)
    user = models.OneToOneField(User, on_delete=models.CASCADE, primary_key=True)
    name = models.CharField(max_length=200,null= True)
    email = models.CharField(max_length=200)
    phone = models.CharField(max_length=12, null=True)
    password = models.CharField(max_length=20, null=True)
    
    def isExists(self):
        if Operation.objects.filter(email = self.email):
            return True
        return  False

class Customer(models.Model):
    added_date = models.DateTimeField(auto_now_add=True,null=True)
    user = models.OneToOneField(User, on_delete=models.CASCADE, primary_key=True)
    name = models.CharField(max_length=200,null= True)
    email = models.CharField(max_length=200)
    phone = models.CharField(max_length=12, null=True)
    password = models.CharField(max_length=20, null=True)
    
    def isExists(self):
        if Customer.objects.filter(email = self.email):
            return True
        return  False

class Category(models.Model):
        name = models.CharField(max_length=150, db_index=True)
        image = models.ImageField(upload_to= "Product", default=False)
        catDesc =models.TextField(null=True)
        def __str__(self):
             return self.name


class GsmType(models.Model):
    category = models.ForeignKey(Category,  on_delete=models.CASCADE)
    title = models.TextField(null=True, blank=True)


class Sizes(models.Model):
    category = models.ForeignKey(Category,  on_delete=models.CASCADE)
    size = models.TextField(null=True, blank=True)

class Gstglobal(models.Model):
    gst = models.IntegerField(null=True, blank=True)

class ProductVolumeType(models.Model):
    category = models.ForeignKey(Category, on_delete=models.CASCADE)
    volumetype = models.CharField(max_length=50, null=True, blank=True)

class SubCategory(models.Model):
    name = models.CharField(max_length=150, db_index=True)
    category = models.ForeignKey(Category, on_delete=models.CASCADE)
    image = models.ImageField(upload_to="Product", default=False)
    desc = models.TextField(null=True)

    def __str__(self):
        return self.name





class SimpleProduct(models.Model):
    subcategory = models.ForeignKey(SubCategory, on_delete=models.CASCADE)
    product_type = models.CharField(max_length=50, null=True, blank=True)
    name = models.CharField(max_length=200, null=True, blank=True)
    size = models.ForeignKey(Sizes, on_delete=models.CASCADE, null=True, blank=True)
    color = models.CharField(max_length=200, null=True, blank=True)
    slug = models.TextField(null=True, blank=True)
    description = models.TextField(null=True, blank=True)
    final_Price = models.FloatField(null=True, blank=True)
    unit_price = models.FloatField(null=True, blank=True)
    margin = models.FloatField(null=True, blank=True)
    packing_charges = models.IntegerField(null=True, blank=True)
    gst = models.ForeignKey(Gstglobal, on_delete=models.CASCADE, null=True, blank=True)
    unit_Weight = models.IntegerField(null=True, blank=True)
    inventory = models.IntegerField(null=True, blank=True)
    product_gsm_type = models.ForeignKey(GsmType, on_delete=models.CASCADE)
    product_vol_type = models.ForeignKey(ProductVolumeType, on_delete=models.CASCADE)
    create_date = models.DateTimeField(auto_now_add=True, null=True, blank=True)


class simpleImage(models.Model):
    product = models.ForeignKey(SimpleProduct, on_delete=models.CASCADE, null=True, blank=True)
    image = models.FileField(upload_to="Product", null=True, blank=True)

class simpleAttribute(models.Model):
    image = models.ForeignKey(simpleImage, on_delete=models.CASCADE, null=True, blank=True)
    product = models.ForeignKey(SimpleProduct, on_delete=models.CASCADE, null=True, blank=True)


class VariableProduct(models.Model):
        name= models.CharField(max_length=200)
        product_type = models.CharField(max_length=50, null=True, blank=True)
        slug = models.SlugField(max_length=100, unique=True, db_index=True, null=True)
        subcategory = models.ForeignKey(SubCategory, on_delete=models.CASCADE)
        desc = models.TextField(null=True)
        inventory = models.IntegerField(null=True, blank=True)
        create_date = models.DateTimeField(auto_now_add=True, null=True, blank=True)

        def __str__(self):
            return self.title

        @staticmethod
        def get_products_by_id(ids):
            return VariableProduct.objects.filter(id__in=ids)


class variableImage(models.Model):
    product = models.ForeignKey(VariableProduct, on_delete=models.CASCADE, null=True, blank=True)
    image = models.FileField(upload_to="variableproducts", null=True, blank=True)


class VariableProductAttributes(models.Model):
    product = models.ForeignKey(VariableProduct, on_delete=models.CASCADE)
    gsm_type = models.ForeignKey(GsmType, on_delete=models.CASCADE)
    volume_type = models.ForeignKey(ProductVolumeType, on_delete=models.CASCADE)
    quantity = models.IntegerField(null=True ,blank=True)
    unit_Cost_price = models.FloatField(null=True, blank=True)
    packing_charge = models.IntegerField(null=True, blank=True)
    unit_weight = models.FloatField(null=True, blank=True)
    product_margin = models.FloatField(null=True, blank=True)
    gst = models.ForeignKey(Gstglobal, on_delete=models.CASCADE, null=True, blank=True)
    size = models.ForeignKey(Sizes, on_delete=models.CASCADE, null=True, blank=True)
    color = models.CharField(max_length=200, null=True, blank=True)
    image = models.ForeignKey(variableImage, on_delete=models.CASCADE, null=True, blank=True)



class simpgrp(models.Model):
    uniqueid = models.CharField(max_length=20, null=True, blank=True)
    simple = models.ForeignKey(SimpleProduct, on_delete=models.CASCADE, null=True, blank=True)


class vargrp(models.Model):
    uniqueid = models.CharField(max_length=20, null=True, blank=True)
    variable = models.ForeignKey(VariableProductAttributes, on_delete=models.CASCADE, null=True, blank=True)


class GroupedProduct(models.Model):
    pid1 = models.IntegerField(null=True, blank=True)
    pid2 = models.IntegerField(null=True, blank=True)
    product_type = models.CharField(max_length=50, null=True, blank=True)
    slug = models.TextField(null=True, blank=True)
    description = models.TextField(null=True, blank=True)
    final_price = models.FloatField(null=True, blank=True)
    volume_type = models.CharField(max_length=30, null=True, blank=True)
    packing_charge = models.IntegerField(null=True, blank=True)
    unit_weight = models.FloatField(null=True, blank=True)
    product_margin = models.FloatField(null=True, blank=True)
    gst = models.FloatField(null=True, blank=True)





class Shopbycategory(models.Model):
    category = models.ForeignKey(Category, on_delete=models.CASCADE, null=True, blank=True)

class Best_Sellers(models.Model):
    prodcut = models.ForeignKey(VariableProduct, on_delete=models.CASCADE)



class Newlaunches(models.Model):
    product = models.ForeignKey(VariableProduct,on_delete=models.CASCADE)

class TrendingProduct(models.Model):
    product = models.ForeignKey(VariableProduct,on_delete=models.CASCADE)

class ProductSize(models.Model):
    product = models.ForeignKey(VariableProduct, on_delete=models.CASCADE)
    size = models.CharField(max_length=25, null=True)
    
    def __str__(self):
        return self.size

class Productquantity(models.Model):
    product = models.ForeignKey(VariableProduct, on_delete=models.CASCADE)
    quantity = models.IntegerField(null=True)
    
    def __str__(self):
        return self.product.title

class ProductColor(models.Model):
    product = models.ForeignKey(VariableProduct, on_delete=models.CASCADE)
    color = models.CharField(max_length=25, null=True)
    
    def __str__(self):
        return self.color

class ProductType(models.Model):
    product = models.ForeignKey(VariableProduct, on_delete=models.CASCADE)
    type = models.CharField(max_length=25, null=True)
    
    def __str__(self):
        return self.type

class ProductImage(models.Model):
    product = models.ForeignKey(VariableProduct, on_delete=models.CASCADE)
    image = models.ImageField(upload_to ="Product")
    video = models.FileField(upload_to ="Product")
    
    def __str__(self):
        return self.product.title


class Cupon(models.Model):
    code = models.CharField(max_length=20, null=True)
    product = models.ForeignKey(VariableProduct, on_delete=models.CASCADE)
    discount = models.IntegerField()

    def __str__(self):
        return self.product.title

class ShipingCategory(models.Model):
    type = models.CharField(max_length=50,null=True)
    price =models.FloatField()


    def __str__(self):
        return self.type

class Shiping(models.Model):
    shipCat =models.ForeignKey(ShipingCategory,on_delete=models.CASCADE)
    destination = models.CharField(max_length=50,null=True)
    product_weight_upto250gms = models.IntegerField()
    product_weight_upto500gms = models.IntegerField()
    product_weight_add500gm = models.IntegerField()
    product_weight_serviceRate_3kg_to_50kg = models.IntegerField()
    product_weight_AirRate_2kg_to_50kg = models.IntegerField()

    def __str__(self):
        return self.destination


class BlogCategory(models.Model):
    title = models.CharField(max_length=50, null=True)
    slug = models.SlugField(max_length=100, unique=True, db_index=True, null=True)
    desc = models.TextField(null=True)
    name = models.CharField(max_length=20, null=True)
    image = models.ImageField(upload_to ="Product") 
    date = models.DateField(auto_now_add=True, null=True) 

    def __str__(self):
        return self.title 

class Blog(models.Model):
    category = models.ForeignKey(BlogCategory, on_delete=models.CASCADE, null=True)
    slug = models.SlugField(max_length=100, unique=True, db_index=True, null=True)
    title = models.CharField(max_length=50, null=True)
    desc = models.TextField(null=True)
    name = models.CharField(max_length=20, null=True)
    image = models.ImageField(upload_to ="Product") 
    date = models.DateField(auto_now_add=True, null=True) 

    def __str__(self):
        return self.title 

class testonomial(models.Model):
    name = models.CharField(max_length=50, null=True)
    email = models.CharField(max_length=30, null=True)
    phone = models.CharField(max_length=15, null=True)
    desc = models.TextField(null=True) 

    def __str__(self):
        return self.name


class Banner(models.Model):
    bannerTitle=models.CharField(max_length=100,null=True)
    bannerImage =models.ImageField(upload_to ="Product")

    def __str__(self):
        return self.bannerTitle

# class CategoryTitle(models.Model):
#     categorytitles =models.CharField(max_length=200,null=True)
#     catForeginkey =models.ForeignKey(Category,on_delete=models.CASCADE)
#     catDesc =models.TextField(null=True)
#
#     def __str__(self):
#         return self.categorytitles




class ShippingExpressGlobal(models.Model):
    shiping_city = models.CharField(max_length=200, null=True, blank=True)
    shiping_weight = models.FloatField(null=True, blank=True)
    shiping_charges = models.FloatField(null=True, blank=True)
    air_rate = models.FloatField(null=True, blank=True)


class ShippingPlusGlobal(models.Model):
    shiping_city = models.CharField(max_length=200, null=True, blank=True)
    shiping_weight = models.FloatField(null=True, blank=True)
    shiping_price = models.FloatField(null=True, blank=True)


class CouponGlobaladd(models.Model):
    coupon_code = models.CharField(max_length=100, blank=True, null=True)
    discount_percent = models.IntegerField(null=True, blank=True)
    coupon_applied_type = models.CharField(max_length=100, null=True, blank=True)
