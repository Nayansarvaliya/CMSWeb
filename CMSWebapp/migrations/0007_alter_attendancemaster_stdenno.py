# Generated by Django 5.0 on 2024-01-29 05:21

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('CMSWebapp', '0006_attendancemaster_studentattendance'),
    ]

    operations = [
        migrations.AlterField(
            model_name='attendancemaster',
            name='stdenno',
            field=models.CharField(max_length=25),
        ),
    ]
