# Generated by Django 4.2 on 2025-06-13 05:49

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('travel', '0017_tripplan'),
    ]

    operations = [
        migrations.CreateModel(
            name='CartItem',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('quantity', models.PositiveIntegerField(default=1)),
                ('destination', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='travel.destination')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='travel.signup')),
            ],
            options={
                'unique_together': {('user', 'destination')},
            },
        ),
    ]
