# views.py
from django.shortcuts import render
from job.models import Job

def home(request):
    jobs = Job.objects.all()
    context = {'job_titles': jobs}  # Corrected key to 'job_titles'
    return render(request, 'jobs/job.html', context)

