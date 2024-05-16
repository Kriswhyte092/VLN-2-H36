from django.contrib.auth.models import AbstractUser, Group, Permission
from django.db import models
from django.utils.translation import gettext_lazy as _
from job.models import Job

class CustomUser(AbstractUser):
    ssn = models.CharField(max_length=20, blank=True, null=True)
    name = models.CharField(max_length=255)
    email = models.EmailField(unique=True)
    birthdate = models.DateField()
    phone = models.CharField(max_length=20)
    picture = models.ImageField(upload_to='profile_pics/', blank=True, null=True)
    
    # Add related_name to avoid clashes with built-in User model
    groups = models.ManyToManyField(
        Group,
        verbose_name=_('groups'),
        blank=True,
        help_text=_(
            'The groups this user belongs to. A user will get all permissions '
            'granted to each of their groups.'
        ),
        related_name='custom_user_groups',  # Custom related_name
        related_query_name='user',
    )
    user_permissions = models.ManyToManyField(
        Permission,
        verbose_name=_('user permissions'),
        blank=True,
        help_text=_('Specific permissions for this user.'),
        related_name='custom_user_permissions',  # Custom related_name
        related_query_name='user',
    )

    def __str__(self):
        return self.username


class AppliesTo(models.Model):
    job_id = models.ForeignKey(Job, on_delete=models.CASCADE)
    user_id = models.ForeignKey(CustomUser, on_delete=models.CASCADE)
