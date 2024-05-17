# views.py
from django.shortcuts import render
from job.models import Job
from django.views.decorators.http import require_POST
from django.db.models import Q
from django.contrib import messages


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

# @require_POST
# def create_job(request):
#     company = request.POST.get('company')
#     location = request.POST.get('location')
#     description = request.POST.get('description')
#     category = request.POST.get('category')

#     if not all([company, location, description, category]):
#         return JsonResponse({'error': 'Missing required fields'}, status=400)

#     try:
#         job = Job.objects.create(company=company, location=location, description=description, category=category)
#         return JsonResponse({'success': 'Job created successfully', 'job_id': job.id})
#     except Exception as e:
#         return JsonResponse({'error': str(e)}, status=500)
