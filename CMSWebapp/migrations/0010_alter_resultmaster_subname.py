# Generated by Django 5.0 on 2024-02-08 06:31

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('CMSWebapp', '0009_resultmaster'),
    ]

    operations = [
        migrations.AlterField(
            model_name='resultmaster',
            name='subname',
            field=models.CharField(choices=[('c', 'c'), ('statistics', 'statistics'), ('english', 'english'), ('pc software', 'pc software'), ('maths', 'maths'), ('data-base management system', 'data-base management system'), ('c programing', 'c programing'), ('financial accounting and management', 'financial accounting and management'), ('opol', 'opol'), ('bussiness economics', 'bussiness economics'), ('computer graphis', 'computer graphis'), ('opreting system', 'opreting system'), ('java', 'java'), ('computer network', 'computer network')], max_length=100),
        ),
    ]
