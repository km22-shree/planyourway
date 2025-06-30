from django.urls import path
from . import views
from .views import logout_view,contact_view
from django.contrib.auth import views as auth_views

urlpatterns = [
    path('', views.index, name='index'),
    path('signup_page/', views.signup_page, name='signup_page'),
    path('login_page/', views.login_page, name='login_page'),
    path('logout/', logout_view, name='logout'),
    path('destination/',views.destinations, name='destination'),
    path('destinations/<int:pk>/', views.destination_detail, name='destination_detail'),
    path('contect', contact_view, name='contact'),
    path('about/', views.about_view, name='about'),
    path('plan/', views.plan_trip, name='plan_trip'),
    path('search/', views.search_view, name='search'),
    path('forgot-password/', views.forgot_password, name='forgot_password'),
    path('reset/done/', auth_views.PasswordResetDoneView.as_view(template_name='password_reset_done.html'), name='password_reset_done'),
    path('reset/<uidb64>/<token>/', auth_views.PasswordResetConfirmView.as_view(template_name='password_reset_confirm.html'),name='password_reset_confirm'),
    path('reset/complete/', auth_views.PasswordResetCompleteView.as_view(template_name='password_reset_complete.html'), name='password_reset_complete'),
  
]
