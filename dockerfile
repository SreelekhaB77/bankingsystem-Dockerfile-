FROM python:3
RUN pip install django==4.2.10
COPY . .
RUN pip install celery
RUN pip install django_celery_beat
RUN python manage.py migrate
CMD ["python","manage.py","runserver","0.0.0.0:8000"]
