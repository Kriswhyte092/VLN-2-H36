from django.db import models
from job.models import Job
# Create your models here.

class UserPicture(models.Model):
    profile_pic = models.ImageField()

class User(models.Model):
    id = models.IntegerField(primary_key=True)
    ssn = models.IntegerField()
    name = models.CharField(max_length=255)
    email = models.CharField(max_length=255)
    birthdate = models.DateField()
    phone = models.IntegerField()
    picture = models.ForeignKey(UserPicture, blank=True, on_delete=models.CASCADE)

class AppliesTo(models.Model):
    job_id = models.ForeignKey(Job, to_field='id', on_delete=models.CASCADE)
    user_id = models.ForeignKey(User, on_delete=models.CASCADE)