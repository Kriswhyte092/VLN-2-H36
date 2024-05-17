from django.shortcuts import render, redirect
from django.contrib import messages
from django.contrib.auth import login as log_in, authenticate, logout
from django.contrib.auth.forms import UserCreationForm
from .forms import CreateUserForm
from job.models import Job


def home(request):
    return render(request, 'home/home.html', {
        'job': Job.objects.all()[:6]
    })


def homeindex(request):
    return render(request, 'base.html')


def login(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')

        user = authenticate(request, username=username, password=password)

        if user is not None:
            log_in(request, user)
            return redirect('home')

    context = {}
    return render(request, 'login/login_page.html', context)


def signup(request):
    form = CreateUserForm()

    if request.method == 'POST':
        form = CreateUserForm(request.POST)
        if form.is_valid():
            form.save()
            user = form.cleaned_data.get('username')
            messages.success(request, 'Account was created for ' + user)
            return redirect('login')

    context = {'form': form}
    return render(request, 'login/signup_page.html', context)


