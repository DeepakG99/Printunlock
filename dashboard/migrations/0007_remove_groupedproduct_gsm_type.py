# Generated by Django 3.2.4 on 2021-10-11 12:12

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('dashboard', '0006_remove_groupedproduct_quantity'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='groupedproduct',
            name='gsm_type',
        ),
    ]
