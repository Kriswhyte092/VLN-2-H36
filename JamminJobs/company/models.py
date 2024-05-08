from django.db import models

# Create your models here.

class CompanyLogo(models.Model):
    logo = models.ImageField()

class Company(models.Model):
    id = models.IntegerField(primary_key=True)
    ssn = models.IntegerField()
    name = models.CharField(max_length=255)
    bio = models.CharField(max_length=255, blank=True)
    address = models.CharField(max_length=255)
    page = models.CharField(max_length=255)
    phone = models.IntegerField()
    companyLogo = models.ForeignKey(CompanyLogo, on_delete=models.CASCADE)