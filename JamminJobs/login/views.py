from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib.auth import login
from .forms import CustomUserCreationForm


def login(request):
    return render(request, 'login/loginpage.html')


def companysignup(request):
    return render(request, 'login/company_sign_up.html')

def companylogin(request):
    return render(request, 'login/company_log_in.html')

from django.contrib import messages

from .forms import CustomUserCreationForm

from django.contrib import messages
from django.shortcuts import render, redirect
from .forms import CustomUserCreationForm
from django.contrib.auth import login as auth_login

def signup(request):
    if request.method == 'POST':
        form = CustomUserCreationForm(request.POST)
        if form.is_valid():
            user = form.save()
            auth_login(request, user)  # Use auth_login to log in the user
            messages.success(request, 'Registration successful. You are now logged in.')
            return redirect('homeindex')  # Redirect to the desired page after successful registration
        else:
            messages.error(request, 'Registration failed. Please correct the errors.')
    else:
        form = CustomUserCreationForm()
    return render(request, 'login/signuppage.html', {'form': form})


