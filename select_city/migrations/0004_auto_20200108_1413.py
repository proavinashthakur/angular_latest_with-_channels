# Generated by Django 3.0.2 on 2020-01-08 14:13

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('select_city', '0003_auto_20200108_1347'),
    ]

    operations = [
        migrations.AlterField(
            model_name='plan',
            name='active',
            field=models.BooleanField(),
        ),
    ]
