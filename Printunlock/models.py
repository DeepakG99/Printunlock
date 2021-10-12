from django.db import models
from django.db.models.fields import TextField
from dashboard.models import *

# class guest(models.Model):
#     user = models.OneToOneField(User, on_delete=models.CASCADE, null=True)
#     email = models.CharField(max_length=20, null=True)
#     password = models.CharField(max_length=20, null=True)


class Cartsimple(models.Model):
    user = models.ForeignKey(Customer, on_delete=models.CASCADE, null=True, blank=True)
    product = models.ForeignKey(SimpleProduct,models.CASCADE, null=True, blank=True)
    size = models.CharField(max_length=50, null=True, blank=True)
    quality = models.CharField(max_length=150, null=True, blank=True)
    quantity = models.IntegerField( null=True, blank=True)


class cartSimleFile(models.Model):
    cartitem = models.ForeignKey(Cartsimple, on_delete=models.CASCADE, null=True, blank=True)
    file = models.FileField(upload_to="cartimage", null=True, blank=True)


class CartVariable(models.Model):
    user = models.ForeignKey(Customer, on_delete=models.CASCADE, null=True, blank=True)
    product = models.ForeignKey(VariableProductAttributes, models.CASCADE, null=True, blank=True)
    size = models.CharField(max_length=50, null=True, blank=True)
    quality = models.CharField(max_length=150, null=True, blank=True)
    quantity = models.IntegerField(null=True, blank=True)

class cartVariableFile(models.Model):
    cartitem = models.ForeignKey(CartVariable, on_delete=models.CASCADE, null=True, blank=True)
    file = models.FileField(upload_to="cartimage", null=True, blank=True)


class CartGrouped(models.Model):
    user = models.ForeignKey(Customer, on_delete=models.CASCADE, null=True, blank=True)
    product = models.ForeignKey(GroupedProduct, models.CASCADE, null=True, blank=True)
    size = models.CharField(max_length=50, null=True, blank=True)
    quality = models.CharField(max_length=150, null=True, blank=True)
    quantity = models.IntegerField(null=True, blank=True)


class cartGroupedFile(models.Model):
    cartitem = models.ForeignKey(CartGrouped, on_delete=models.CASCADE, null=True, blank=True)
    file = models.FileField(upload_to="cartimage", null=True, blank=True)

# class Cart(models.Model):
#     guest = models.ForeignKey(guest, on_delete=models.CASCADE, null=True)
#     product = models.TextField(null=True, blank=True)
#     quantity = models.SmallIntegerField(default=1)
#     color = models.CharField(max_length=25, null=True)
#     size = models.CharField(max_length=30, null=True)
#     costprice = models.FloatField()
#     type = models.CharField(max_length=50, null=True)
#     timesmap = models.DateTimeField(auto_now_add=True, auto_now=False)
#
#     def total_price(self):
#         return self.quantity * self.product.price



# class Cartitem(models.Model):
#     guest = models.ForeignKey(guest, on_delete=models.CASCADE, null=True)
#     items = models.ForeignKey(Cart, on_delete=models.CASCADE)
#
#     def __str__(self):
#         return self.cart.product.title


class Order(models.Model):
    guest = models.ForeignKey(Customer, on_delete=models.CASCADE, null=True)
    orderitem = models.TextField(default=False)
    subtotal = models.IntegerField(null=True)
    gst = models.FloatField(null=True)
    packaging = models.IntegerField(null=True)
    grandtotal = models.IntegerField(null=True)
    firstname = models.CharField(max_length=50, null=True)
    lastname = models.CharField(max_length=50, null=True)
    email = models.CharField(max_length=20, null=True)
    phone = models.CharField(max_length=10, null=True)
    address = models.TextField()
    city  = models.CharField(max_length=50, null=True)
    country = models.CharField(max_length=50, null=True)
    town = models.CharField(max_length=50, null=True)
    pincode = models.CharField(max_length=10, null=True)
    orderdate = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.customer.name

# class Ordercart(models.Model):
#     order = models.ForeignKey(Order, on_delete=models.CASCADE)
#     cart = models.ForeignKey(Cart, on_delete=models.CASCADE)
#     guest = models.ForeignKey(guest, on_delete=models.CASCADE)
#
#     def __str__(self):
#         return self.customer.name
    



