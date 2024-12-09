# Generated by Django 5.0 on 2024-02-19 06:05

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('CMSWebapp', '0011_alter_resultmaster_subname'),
    ]

    operations = [
        migrations.CreateModel(
            name='EventMaster',
            fields=[
                ('eventid', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='EID')),
                ('eventname', models.CharField(max_length=100)),
                ('eventdate', models.CharField(max_length=100)),
            ],
            options={
                'db_table': 'eventmaster',
            },
        ),
    ]
