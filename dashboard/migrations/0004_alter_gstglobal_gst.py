# Generated by Django 3.2.4 on 2021-10-10 10:18

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('dashboard', '0003_simpleproduct_unit_price'),
    ]

    operations = [
        migrations.AlterField(
            model_name='gstglobal',
            name='gst',
            field=models.IntegerField(blank=True, null=True),
        ),
    ]
