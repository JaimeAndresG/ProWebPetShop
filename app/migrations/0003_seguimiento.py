# Generated by Django 4.0.4 on 2022-06-25 23:06

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0002_carrito_usuario'),
    ]

    operations = [
        migrations.CreateModel(
            name='Seguimiento',
            fields=[
                ('codigo', models.AutoField(primary_key=True, serialize=False)),
                ('cantidad', models.IntegerField()),
                ('usuario', models.IntegerField()),
                ('estado', models.CharField(max_length=50)),
                ('producto', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='app.producto')),
            ],
            options={
                'db_table': 'db_seguimiento',
            },
        ),
    ]
