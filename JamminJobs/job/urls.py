from django.urls import path
from . import views

urlpatterns = [
    path('', views.get_jobs, name='jobindex'),
    # Other URL patterns
]
