from django.shortcuts import render, redirect
from .forms import CustomUserCreationForm
from django.contrib import messages
from django.contrib.auth import login as auth_login

def login(request):
    return render(request, 'login/login_page.html')


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
    return render(request, 'login/signup_page.html', {'form': form})


