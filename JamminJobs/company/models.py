from django.db import models

class Company(models.Model):
    id = models.AutoField(primary_key=True)
    ssn = models.IntegerField(unique=True)  
    name = models.CharField(max_length=255)
    bio = models.CharField(max_length=255, blank=True)
    address = models.CharField(max_length=255)
    page = models.CharField(max_length=255, blank=True)
    phone = models.IntegerField()
    company_logo = models.CharField(max_length=255, blank=True)
