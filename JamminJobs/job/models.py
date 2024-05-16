from django.db import models
from company.models import Company

class JobType(models.Model):
    FULL_TIME = 'full_time'
    PART_TIME = 'part_time'
    
    TYPE_CHOICES = [
        (FULL_TIME, 'Full Time'),
        (PART_TIME, 'Part Time'),
    ]

    type = models.CharField(max_length=20, choices=TYPE_CHOICES, default=FULL_TIME)


class JobCategory(models.Model):
    UNCAT = 'uncategorized'
    TECH = 'tech'
    SALES = 'sales'
    MARKETING = 'marketing'
    FINANCE = 'finance'
    HR = 'human_resources'
    DESIGN = 'design'
    EDUCATION = 'education'
    HEALTHCARE = 'healthcare'
    
    CATEGORY_CHOICES = [
        (UNCAT, 'Uncategorized'),
        (TECH, 'Technology'),
        (SALES, 'Sales'),
        (MARKETING, 'Marketing'),
        (FINANCE, 'Finance'),
        (HR, 'Human Resources'),
        (DESIGN, 'Design'),
        (EDUCATION, 'Education'),
        (HEALTHCARE, 'Healthcare'),
    ]

    category = models.CharField(max_length=20, choices=CATEGORY_CHOICES, default=UNCAT)

class Job(models.Model):
    id = models.AutoField(primary_key=True)
    title = models.CharField(max_length=255)
    category = models.ForeignKey('JobCategory', on_delete=models.CASCADE, related_name='jobs')
    type = models.ForeignKey('JobType', on_delete=models.CASCADE, related_name='jobs')
    company = models.ForeignKey(Company, on_delete=models.CASCADE, related_name='jobs')  # Ensure correct reference
    location = models.CharField(max_length=255, blank=True)
    date_added = models.DateTimeField()
    due_date = models.DateTimeField()
    description = models.TextField()