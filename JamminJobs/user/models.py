from django.db import models
from job.models import Job

class User(models.Model):
    id = models.AutoField(primary_key=True)  
    ssn = models.IntegerField(unique=True)  
    name = models.CharField(max_length=255)
    email = models.CharField(max_length=255)
    birthdate = models.DateField()
    phone = models.IntegerField()
    picture = models.CharField(max_length=255, blank=True)

class AppliesTo(models.Model):
    job_id = models.ForeignKey(Job, on_delete=models.CASCADE)
    user_id = models.ForeignKey(User, on_delete=models.CASCADE)
