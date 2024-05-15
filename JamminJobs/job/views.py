# views.py
from django.shortcuts import render
from job.models import Job
from django.views.decorators.http import require_POST


def get_jobs(request):
    data = {'jobs': Job.objects.all()}
    return render(request, 'jobs/job.html', data)



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
