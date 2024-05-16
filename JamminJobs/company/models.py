from django.db import models

class Company(models.Model):
    ssn = models.CharField(max_length=10, unique=True)
    name = models.CharField(max_length=255)
    bio = models.TextField()
    address = models.CharField(max_length=255)
    page = models.URLField()
    phone = models.CharField(max_length=15)
    company_logo = models.ImageField(upload_to='company_logos/')