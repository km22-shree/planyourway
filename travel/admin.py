from django.contrib import admin
from .models import Signup,Destination,Contact,TripPlan

# Register your models here.
admin.site.register(Signup)
admin.site.register(Destination)
admin.site.register(Contact)
admin.site.register(TripPlan)
