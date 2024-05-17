from django.urls import path
from . import views

urlpatterns = [
        path("", views.home, name="companyindex"),
        path('<int:company_id>/', views.company_detail, name='company_detail'),
]