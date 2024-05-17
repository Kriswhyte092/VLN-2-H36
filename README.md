# JamminJobs

Welcome to JamminJobs, a web application developed for the Verklegt 2 project. JamminJobs is designed to help job seekers find and apply for jobs seamlessly. The platform provides features like job searching, filtering by employment type and category, detailed job descriptions, and an application system.

## Table of Contents

- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Project Structure](#project-structure)


## Features

- **Search Functionality:** Search for jobs using keywords.
- **Filtering:** Filter job listings by employment type (Full-Time, Part-Time, Remote, Internship, Contract) and job categories (Design, Sales, Marketing, Education, Human Resource, Finance, Healthcare, Technology).
- **Job Details:** View detailed descriptions of each job.
- **Application System:** Apply for jobs directly through the platform.

## Installation

### Prerequisites

- Python 3.8+
- Django 4.0+

### Steps

1. **Clone the Repository**
    ```bash
    git clone https://github.com/your-username/jamminjobs.git
    cd jamminjobs
    ```

2. **Set Up the Virtual Environment**
    ```bash
    python -m venv env
    source env/bin/activate  # On Windows use `env\Scripts\activate`
    ```

3. **Install Python Dependencies**
    ```bash
    pip install -r requirements.txt
    ```

4. **Run the Development Server**
    ```bash
    python manage.py runserver
    ```

5. **Access the Application**
    Open your web browser and navigate to `http://127.0.0.1:8000`.

### Python Dependencies

Here are the dependencies listed in the `requirements.txt`:

```plaintext
asgiref==3.5.0
Django==4.0.4
django-appconf==1.0.5
django-compressor==4.0
django-libsass==0.9
libsass==0.21.0
Pillow==9.1.0
psycopg2-binary==2.9.3
rcssmin==1.1.0
rjsmin==1.2.0
six==1.16.0
sqlparse==0.4.2
tzdata==2022.1

## Project Structure

JamminJobs/
│
├── JamminJobs/
│   ├── __init__.py
│   ├── asgi.py
│   ├── settings.py
│   ├── urls.py
│   ├── wsgi.py
│
├── company/
│   ├── __init__.py
│   ├── admin.py
│   ├── apps.py
│   ├── models.py
│   ├── tests.py
│   ├── views.py
│   └── templates/
│       └── company/
│           └── base.html
│
├── home/
│   ├── __init__.py
│   ├── admin.py
│   ├── apps.py
│   ├── models.py
│   ├── tests.py
│   ├── views.py
│   └── templates/
│       └── home/
│           └── index.html
│
├── job/
│   ├── __init__.py
│   ├── admin.py
│   ├── apps.py
│   ├── models.py
│   ├── tests.py
│   ├── urls.py
│   ├── views.py
│   └── templates/
│       └── job/
│           ├── search_results.html
│           ├── single_job.html
│
├── login/
│   ├── __init__.py
│   ├── admin.py
│   ├── apps.py
│   ├── models.py
│   ├── tests.py
│   ├── views.py
│   └── templates/
│       └── login/
│           └── login.html
│
├── media/
│   └── company_logos/
│
├── queries/
│   ├── __init__.py
│   ├── admin.py
│   ├── apps.py
│   ├── models.py
│   ├── tests.py
│   ├── views.py
│
├── signup/
│   ├── __init__.py
│   ├── admin.py
│   ├── apps.py
│   ├── models.py
│   ├── tests.py
│   ├── views.py
│   └── templates/
│       └── signup/
│           └── signup.html
│
├── static/
│   ├── css/
│       └── styles.css
│
├── staticfiles/
│
├── templates/
│
├── user/
│   ├── __init__.py
│   ├── admin.py
│   ├── apps.py
│   ├── models.py
│   ├── tests.py
│   ├── views.py
│
├── manage.py
├── .gitignore
├── README.md
└── requirements.txt
