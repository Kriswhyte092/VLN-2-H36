from django.shortcuts import render
from job.models import Job

def home(request):
    return render(request, 'home/home.html', {
            'job': Job.objects.all()
    })

