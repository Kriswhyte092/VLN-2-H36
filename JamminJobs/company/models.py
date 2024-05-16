from django.db import models

class Company(models.Model):
    id = models.AutoField(primary_key=True)
    ssn = models.CharField(max_length=11, unique=True)  # Changed to CharField to handle formatted SSNs
    name = models.CharField(max_length=255)
    bio = models.TextField(blank=True)  # Changed to TextField for longer text
    address = models.CharField(max_length=255)
    page = models.URLField(max_length=200, blank=True)  # Assuming 'page' is a URL
    phone = models.CharField(max_length=20)  # Changed to CharField to accommodate phone number formatting
    company_logo = models.URLField(max_length=200, blank=True)  # Assuming 'company_logo' is a URL

