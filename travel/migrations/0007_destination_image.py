# Generated by Django 3.2.25 on 2025-05-13 11:29

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('travel', '0006_remove_destination_image'),
    ]

    operations = [
        migrations.AddField(
            model_name='destination',
            name='image',
            field=models.ImageField(blank=True, null=True, upload_to='Destination/'),
        ),
    ]
