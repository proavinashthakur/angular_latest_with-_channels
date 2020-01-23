# # set the base image
# FROM python:3.7
# # File Author / Maintainer
# MAINTAINER Avinash
# #add project files to the usr/src/app folder
# ADD . /home/ameo/demo/demo
# #set directoty where CMD will execute
# WORKDIR /home/ameo/demo/demo
# COPY requirements.txt ./
# # Get pip to download and install requirements:
# RUN pip install --no-cache-dir -r requirements.txt
# # Expose ports
# EXPOSE 8000
# # default command to execute
# RUN python manage.py collectstatic --no-input
#
# CMD exec gunicorn demo.wsgi:application --bind 0.0.0.0:8000 --workers 3
# set the base image
FROM python:3.7

# File Author Maintainer
MAINTAINER Iamageek
ADD . /home/ameo/demo/demo
ENV PYTHONUNBUFFERED 1

WORKDIR /home/ameo/demo/demo
RUN pip install -r requirements.txt
EXPOSE 8005

