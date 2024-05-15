from django.shortcuts import render
# Create your views here.


def login(request):
    return render(request, 'login/login_page.html')


def signup(request):
    return render(request, 'login/signup_page.html')


def companysignup(request):
    return render(request, 'login/comp_signup.html')


def companylogin(request):
    return render(request, 'login/comp_login.html')
