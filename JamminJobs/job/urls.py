from django.urls import path
from . import views

urlpatterns = [
    path('', views.get_jobs, name='jobindex'),
    path('search/', views.job_search, name='search_jobs'),    # Other URL patterns
]
