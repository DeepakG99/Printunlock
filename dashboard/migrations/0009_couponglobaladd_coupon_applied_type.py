# Generated by Django 3.2.4 on 2021-10-13 11:15

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('dashboard', '0008_couponglobaladd_shippingexpressglobal_shippingplusglobal'),
    ]

    operations = [
        migrations.AddField(
            model_name='couponglobaladd',
            name='coupon_applied_type',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
    ]
