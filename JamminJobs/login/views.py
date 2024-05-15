from django.shortcuts import render
from django.http import HttpResponse
# Create your views here.


def login(request):
    return render(request, 'login/loginpage.html')

def signup(request):
    return render(request, 'login/signuppage.html')

def companysignup(request):
    return render(request, 'login/company_sign_up.html')

def companylogin(request):
    return render(request, 'login/company_log_in.html')