# Generated by Django 5.0.4 on 2024-05-08 12:18

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('job', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='User',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('ssn', models.IntegerField()),
                ('name', models.CharField(max_length=255)),
                ('email', models.CharField(max_length=255)),
                ('birthdate', models.DateField()),
                ('phone', models.IntegerField()),
            ],
        ),
        migrations.CreateModel(
            name='UserPicture',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('profile_pic', models.ImageField(upload_to='')),
            ],
        ),
        migrations.CreateModel(
            name='AppliesTo',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('job_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='job.job')),
                ('user_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='user.user')),
            ],
        ),
        migrations.AddField(
            model_name='user',
            name='picture',
            field=models.ForeignKey(blank=True, on_delete=django.db.models.deletion.CASCADE, to='user.userpicture'),
        ),
    ]