from django.db import models
from company.models import Company
# Create your models here.

class JobType(models.Model):
    type = models.CharField(max_length=255)

class JobCategory(models.Model):
    name = models.CharField(max_length=255)


class Job(models.Model):
    id = models.IntegerField(primary_key=True)
    title = models.CharField(max_length=255)
    category = models.ForeignKey(JobCategory, on_delete=models.CASCADE)
    type = models.ForeignKey(JobType, on_delete=models.CASCADE)
    company_id = models.ForeignKey(Company, to_field='id', on_delete=models.CASCADE)
    location = models.CharField(max_length=255)
    date_added = models.DateField()
    due_date = models.DateField()
    description = models.CharField(max_length=255)