# Generated by Django 5.0 on 2024-01-12 05:16

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='FacultyMaster',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('fname', models.CharField(max_length=25)),
                ('lname', models.CharField(max_length=25)),
                ('emailid', models.CharField(max_length=50)),
                ('contactno', models.BigIntegerField()),
                ('designation', models.CharField(max_length=50)),
                ('department', models.CharField(max_length=50)),
                ('address', models.CharField(max_length=100)),
                ('city', models.CharField(max_length=25)),
                ('area', models.CharField(max_length=25)),
                ('facphoto', models.FileField(max_length=50, upload_to='images')),
            ],
            options={
                'db_table': 'facultymaster',
            },
        ),
    ]
