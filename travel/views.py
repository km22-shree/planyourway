from django.shortcuts import render, redirect
from .forms import SignupForm,ContactForm,TripPlanForm
from .models import Signup ,Destination
from django.contrib import messages
from django.core.mail import send_mail
from django.shortcuts import render, get_object_or_404
from django.contrib.auth.models import User
from django.contrib.auth import login, authenticate
from django.contrib.auth import logout
from django.contrib.auth.forms import PasswordResetForm
from django.contrib.auth.tokens import default_token_generator
from django.utils.http import urlsafe_base64_encode
from django.utils.encoding import force_bytes
from django.template.loader import render_to_string
from django.conf import settings
from django.contrib.auth import get_user_model


def index(request):
    user_email = request.session.get('user_email')
    destinations = Destination.objects.all()

    # Chunk destinations in groups of 4
    chunked_destinations = [destinations[i:i+4] for i in range(0, len(destinations), 4)]

  
    return render(request, 'index.html', {
        'user_email': user_email,
        'destinations_grouped': chunked_destinations
    })

def signup_page(request):
    if request.method == 'POST':
        form = SignupForm(request.POST)
        if form.is_valid():
            # Save to custom Signup model
            signup_data = form.save()

            # Create Django user
            user = User.objects.create_user(
                username=signup_data.name,
                email=signup_data.email,
                password=signup_data.password
            )

            # Authenticate and log the user in
            user = authenticate(request, username=signup_data.name, password=signup_data.password)
            if user is not None:
                login(request, user)
                return redirect('index')
    else:
        form = SignupForm()

    return render(request, 'signup_page.html', {'form': form})



User = get_user_model()

def login_page(request):
    if request.method == "POST":
        email = request.POST.get('email')
        password = request.POST.get('password')
        try:
            user_obj = User.objects.get(email=email)
            user = authenticate(request, username=user_obj.username, password=password)
        except User.DoesNotExist:
            user = None

        if user is not None:
            login(request, user)
            return redirect('index')
        else:
            error = "Invalid email or password"
            return render(request, 'login.html', {'error': error})

    return render(request, 'login.html')

def logout_view(request):
    logout(request)
    return redirect('login_page')

def destinations(request):
    qs = Destination.objects.all()
    country = request.GET.get('country')
    region = request.GET.get('region')
    activity = request.GET.get('activity')
    budget = request.GET.get('budget')
    view_mode = request.GET.get('view', 'grid')  # default is 'grid'

    if country:
        qs = qs.filter(country__icontains=country)
    if region:
        qs = qs.filter(region__icontains=region)
    if activity:
        qs = qs.filter(activity_type__iexact=activity)
    if budget:
        qs = qs.filter(budget__lte=budget)

    countries = Destination.objects.values_list('country', flat=True).distinct()

    return render(request, 'destinations.html', {
        'destinations': qs,
        'countries': countries,
        'view_mode':  request.GET.get('view', 'grid')
    })

def destination_detail(request, pk):
    destination = get_object_or_404(Destination, pk=pk)

    return render(request, 'destination_detail.html', {
        'destination': destination
    })

def contact_view(request):
    if request.method == 'POST':
        form = ContactForm(request.POST)
        if form.is_valid():
            name = form.cleaned_data['name']
            email = form.cleaned_data['email']
            subject = form.cleaned_data['subject']
            message = form.cleaned_data['message']

            # Compose full message
            full_message = f"Message from {name} <{email}>:\n\n{message}"

            # Send email
            send_mail(
                subject=subject,
                message=full_message,
                from_email=email,
                recipient_list=['your_email@example.com'],  # Change to your admin/own email
                fail_silently=False,
            )

            messages.success(request, 'Your message has been sent successfully!')
            return redirect('contact')
    else:
        form = ContactForm()

    return render(request, 'contact.html', {'form': form})

def about_view(request):
    return render(request, 'about.html')

def plan_trip(request):
    if request.method == 'POST':
        form = TripPlanForm(request.POST)
        if form.is_valid():
            form.save()
            return render(request, 'thanks.html')
    else:
        form = TripPlanForm()
    return render(request, 'plan_trip.html', {'form': form})

def search_view(request):
    query = request.GET.get('q', '')
    results = []

    if query:
        results = Destination.objects.filter(travel_destination__icontains=query)


    context = {
        'query': query,
        'results': results
    }
    return render(request, 'search_results.html', context)

def forgot_password(request):
    if request.method == "POST":
        form = PasswordResetForm(request.POST)
        if form.is_valid():
            email = form.cleaned_data['email']
            associated_users = User.objects.filter(email=email)
            if associated_users.exists():
                for user in associated_users:
                    subject = "Password Reset Requested"
                    email_template_name = "password_reset_email.txt"
                    c = {
                        "email": user.email,
                        'domain': 'example.com',  # Update this to your domain
                        'site_name': 'Plan Your Way',
                        "uid": urlsafe_base64_encode(force_bytes(user.pk)),
                        "user": user,
                        'token': default_token_generator.make_token(user),
                        'protocol': 'https',
                    }
                    email_content = render_to_string(email_template_name, c)
                    send_mail(subject, email_content, settings.DEFAULT_FROM_EMAIL, [user.email])
            return redirect('password_reset_done')
    else:
        form = PasswordResetForm()
    return render(request, "forgot_password.html", {"form": form})

