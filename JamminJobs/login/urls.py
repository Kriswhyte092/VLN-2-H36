from django.urls import path
from . import views

urlpatterns = [
    path('', views.login, name='login'),
    path('companylogin', views.companylogin, name='companylogin'),
    path('signup', views.signup, name='signup'),
    path('companysignup', views.companysignup, name='companysignup'),
]
