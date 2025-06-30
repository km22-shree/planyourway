from django import forms
from .models import Signup,Contact,TripPlan

class SignupForm(forms.ModelForm):
    class Meta:
        model = Signup
        fields = ['name', 'email', 'password']
        widgets = {
            'name': forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Enter your name'}),
            'email': forms.EmailInput(attrs={'class': 'form-control', 'placeholder': 'Enter your email'}),
            'password': forms.PasswordInput(attrs={'class': 'form-control', 'placeholder': 'Enter password'}),
        }


class ContactForm(forms.ModelForm):
    class Meta:
        model = Contact
        fields = ['name', 'email', 'subject', 'message']
        widgets = {
            'name': forms.TextInput(attrs={'class': 'input-field', 'placeholder': 'Your name'}),
            'email': forms.EmailInput(attrs={'class': 'input-field', 'placeholder': 'Your email'}),
            'subject': forms.TextInput(attrs={'class': 'input-field', 'placeholder': 'Subject'}),
            'message': forms.Textarea(attrs={'class': 'input-field', 'placeholder': 'Message'}),
        }


class TripPlanForm(forms.ModelForm):
     class Meta:
        model = TripPlan
        fields = [
            'name', 'email', 'phone', 'destination', 'start_date', 'end_date',
            'budget', 'transport', 'accommodation', 'star_rating',
            'special_requests', 'itinerary'
        ]
        widgets = {
            'name': forms.TextInput(attrs={'class': 'input-field', 'placeholder': 'Full Name'}),
            'email': forms.EmailInput(attrs={'class': 'input-field', 'placeholder': 'Email Address'}),
            'phone': forms.TextInput(attrs={'class': 'input-field', 'placeholder': 'Phone Number'}),
            'destination': forms.TextInput(attrs={'class': 'input-field', 'placeholder': 'Destination'}),
            'start_date': forms.DateInput(attrs={'type': 'date', 'class': 'input-field', 'placeholder': 'Start Date'}),
            'end_date': forms.DateInput(attrs={'type': 'date', 'class': 'input-field', 'placeholder': 'End Date'}),
            'budget': forms.NumberInput(attrs={'class': 'input-field', 'placeholder': 'Budget'}),
            'transport': forms.TextInput(attrs={'class': 'input-field', 'placeholder': 'Transport Type'}),
            'accommodation': forms.TextInput(attrs={'class': 'input-field', 'placeholder': 'Accommodation'}),
            'star_rating': forms.NumberInput(attrs={'class': 'input-field', 'placeholder': 'Star Rating'}),
            'special_requests': forms.Textarea(attrs={
                'class': 'input-field', 'placeholder': 'Special Requests', 'rows': 3
            }),
            'itinerary': forms.Textarea(attrs={
                'class': 'input-field', 'placeholder': 'Itinerary Plan', 'rows': 3
            }),
        }