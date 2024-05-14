
from django.shortcuts import render
from user.models import User

def home(request):
    user_names = User.objects.all()
    context = {'users': user_names} 
    return render(request, 'users/user.html', context)
    

