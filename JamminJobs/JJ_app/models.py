from django.db import models

class JobCategories(models.Model):
    name = models.CharField(max_length=255)

class UserPicture(models.Model):
    profile_pic = models.ImageField()

class User(models.Model):
    id = models.IntegerField()
    ssn = models.IntegerField()
    name = models.CharField(max_length=255)
    email = models.CharField(max_length=255)
    birthdate = models.DateField()
    phone = models.IntegerField()
    picture = models.ForeignKey(UserPicture)

class CompanyLogo(models.Model):
    logo = models.ImageField()

class Company(models.Model):
    id = models.IntegerField()
    ssn = models.IntegerField()
    name = models.CharField(max_length=255)
    bio = models.CharField(max_length=255, blank=True)
    address = models.CharField(max_length=255)
    page = models.CharField(max_length=255)
    phone = models.IntegerField()
    companyLogo = models.ForeignKey(CompanyLogo)

class JobType(models.Model):
    type = models.CharField(max_length=255)

class JobCategory(models.Model):
    name = models.CharField(max_length=255)

class Job(models.Model):
    id = models.IntegerField()
    title = models.CharField(max_length=255)
    category = models.ForeignKey(JobCategory, on_delete=models.CASCADE)
    type = models.ForeignKey(JobType, on_delete=models.CASCADE)
    company_id = models.ForeignKey(Company, on_delete=models.CASCADE)
    location = models.CharField(max_length=255)
    date_added = models.DateField()
    due_date = models.DateField()
    description = models.CharField(max_length=255)

class AppliesTo(models.model):
    job_id = models.ForeignKey(Job)
    user_id = models.ForeignKey(User)