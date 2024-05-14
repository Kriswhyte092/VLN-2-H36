# views.py
from django.http import JsonResponse
from job.models import Job
from django.views.decorators.http import require_POST


def get_jobs(request):
    jobs = Job.objects.all()
    data = [{'company': job.company, 'location': job.location, 'description': job.description, 'category': job.category} for job in jobs]
    return JsonResponse(data)


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