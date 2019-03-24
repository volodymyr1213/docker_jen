FROM centos:centos7
MAINTAINER "vova.khomenko1990@gmail.com"

COPY .  /app/ 
WORKDIR /app

EXPOSE 4000

RUN yum install epel-release -y
RUN yum install python-pip -y
RUN pip install -r /app/requirements.txt


ENTRYPOINT [ "python", "/app/app.py" ]



