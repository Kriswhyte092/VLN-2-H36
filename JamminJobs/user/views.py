
from django.shortcuts import render
from user.models import CustomUser

def home(request):
    user_names = CustomUser.objects.all()
    context = {'users': user_names} 
    return render(request, 'users/user.html', context)
    

