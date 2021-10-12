# Generated by Django 3.2.4 on 2021-10-10 18:28

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Printunlock', '0003_auto_20211010_2345'),
    ]

    operations = [
        migrations.AddField(
            model_name='cartgrouped',
            name='quality',
            field=models.CharField(blank=True, max_length=150, null=True),
        ),
        migrations.AddField(
            model_name='cartgrouped',
            name='quantity',
            field=models.IntegerField(blank=True, null=True),
        ),
        migrations.AddField(
            model_name='cartgrouped',
            name='size',
            field=models.CharField(blank=True, max_length=50, null=True),
        ),
        migrations.AddField(
            model_name='cartsimple',
            name='quality',
            field=models.CharField(blank=True, max_length=150, null=True),
        ),
        migrations.AddField(
            model_name='cartvariable',
            name='quality',
            field=models.CharField(blank=True, max_length=150, null=True),
        ),
        migrations.AddField(
            model_name='cartvariable',
            name='quantity',
            field=models.IntegerField(blank=True, null=True),
        ),
        migrations.AddField(
            model_name='cartvariable',
            name='size',
            field=models.CharField(blank=True, max_length=50, null=True),
        ),
    ]