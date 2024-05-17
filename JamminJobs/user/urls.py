from django.urls import path
from . import views

urlpatterns = [
        path("", views.home, name="userindex"),
        path('profile', views.profile_view, name='profile'),
]