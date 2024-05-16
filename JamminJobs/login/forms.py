from django import forms
from django.contrib.auth.forms import UserCreationForm
from user.models import CustomUser

class CustomUserCreationForm(UserCreationForm):
    password1 = forms.CharField(label='Password', widget=forms.PasswordInput)
    password2 = forms.CharField(label='Confirm Password', widget=forms.PasswordInput)
    
    class Meta:
        model = CustomUser
        fields = ['username', 'password1', 'password2', 'email', 'name', 'birthdate', 'phone', 'picture']
        labels = {
            'username': 'Username',
            'email': 'Email',
            'name': 'Full Name',
            'birthdate': 'Birthdate',
            'phone': 'Phone',
            'picture': 'Profile Picture'
        }
        help_texts = {
            'username': 'Required. 150 characters or fewer. Letters, digits and @/./+/-/_ only.',
            'email': 'Required. Must be a valid email address.',
            'birthdate': 'Required. Format: YYYY-MM-DD',
            'phone': 'Optional. Enter phone number in format XXX-XXX-XXXX.',
            'picture': 'Optional. Upload a profile picture.'
        }
    
    def clean_email(self):
        email = self.cleaned_data.get('email')
        if CustomUser.objects.filter(email=email).exists():
            raise forms.ValidationError('This email is already in use.')
        return email
