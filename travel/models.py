from django.db import models

# Create your models here.
class Signup(models.Model):
    name = models.CharField(max_length=100)
    email = models.EmailField(unique=True)
    password = models.CharField(max_length=100)

    def __str__(self):
        return self.name

class Destination(models.Model):
    travel_destination = models.CharField(max_length=100)
    country = models.CharField(max_length=50)
    region = models.CharField(max_length=50)
    activity_type = models.CharField(max_length=50)
    budget = models.IntegerField()
    rating = models.FloatField(default=0.0)
    image = models.ImageField(upload_to='Destination/',null=True, blank=True)
    Description = models.TextField(default="No description available")
   
    def __str__(self):
        return self.travel_destination
    
class Contact(models.Model):
    name = models.CharField(max_length=100)
    email = models.EmailField()
    subject = models.CharField(max_length=200)
    message = models.TextField()

    def __str__(self):
        return f"{self.name} - {self.subject}"  

class TripPlan(models.Model):
    destination = models.CharField(max_length=100)
    start_date = models.DateField()
    end_date = models.DateField()
    budget = models.DecimalField(max_digits=10, decimal_places=2)
    transport = models.CharField(max_length=50)
    accommodation = models.CharField(max_length=50)
    star_rating = models.IntegerField()
    special_requests = models.TextField(blank=True)
    itinerary = models.TextField(blank=True)
    name = models.CharField(max_length=100)
    email = models.EmailField()
    phone = models.CharField(max_length=20, blank=True)

    def __str__(self):
        return f"{self.name} - {self.destination}"      