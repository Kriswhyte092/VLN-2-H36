from django.shortcuts import render
from company.models import Company

def home(request):
    companies = Company.objects.all()
    context = {'companies': companies} 
    return render(request, 'companies/company.html', context)
    

