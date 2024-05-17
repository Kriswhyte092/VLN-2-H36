from django.urls import path
from . import views

urlpatterns = [
    path('', views.get_jobs, name='jobindex'),
    path('search/', views.job_search, name='search_jobs'),    # Other URL patterns
    path('<int:job_id>/apply/', views.apply_for_job, name='apply_for_job'),
]
