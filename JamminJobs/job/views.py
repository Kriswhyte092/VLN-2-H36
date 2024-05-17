# views.py
from django.shortcuts import render
from job.models import Job
from django.db.models import Q
from django.contrib import messages
from django.shortcuts import render, get_object_or_404


def get_jobs(request):
    data = {'jobs': Job.objects.all()}
    return render(request, 'jobs/job.html', data)

def job_search(request):
    if request.method == 'POST':
        searched = request.POST.get('searched', '').strip()
        if searched:
            searched_jobs = Job.objects.filter(
                Q(title__icontains=searched) 
                # Q(category__icontains=searched) |  # Correct path for 'name' in JobCategory
                # Q(company__icontains=searched)    # Correct path for 'name' in Company
            )
            if not searched_jobs.exists():  # Efficiently check if the queryset is empty
                messages.info(request, "No matching jobs found.")  # Use messages.info for informational message
                return render(request, "jobs/job.html", {'query': searched})
            else:
                return render(request, "jobs/job.html", {'searched_jobs': searched_jobs, 'query': searched})
        else:
            messages.warning(request, "Please enter a search term.")
            return render(request, "jobs/job.html", {})
    else:
        return render(request, "jobs/job.html", {})

def jobindex(request):
    jobs = Job.objects.all()
    return render(request, 'jobindex.html', {'jobs': jobs})

def apply_for_job(request, job_id):
    job = get_object_or_404(Job, id=job_id)
    return render(request, 'jobs/apply_for_job.html', {'job': job})