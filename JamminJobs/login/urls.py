from django.urls import path
from . import views

urlpatterns = [
    path("", views.home, name="loginindex"),
    path("companylogin", views.companyloginindex, name="companyloginindex"),
    path('signup', views.signup, name='signup'),
    path('companysignup', views.companysignup, name='companysignup'),
]
