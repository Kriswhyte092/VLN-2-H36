from django.shortcuts import render
from company.models import Company

def home(request):
    companies = Company.objects.all()
    context = {'companies': companies} 
    return render(request, 'companies/company.html', context)
    

def companyindex(request):
    companies = Company.objects.all()
    return render(request, 'companyindex.html', {'companies': companies})