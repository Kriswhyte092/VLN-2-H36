from django.shortcuts import render
from company.models import Company
from django.shortcuts import render, get_object_or_404

def home(request):
    companies = Company.objects.all()
    context = {'companies': companies} 
    return render(request, 'companies/company.html', context)
    

def companyindex(request):
    companies = Company.objects.all()
    return render(request, 'companyindex.html', {'companies': companies})



def company_detail(request, company_id):
    company = get_object_or_404(Company, id=company_id)
    return render(request, 'companies/company_detail.html', {'company': company})


