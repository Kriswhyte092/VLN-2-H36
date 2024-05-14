from django.shortcuts import render
from job.models import Job

def home(request):
    return render(request, 'test.html')

