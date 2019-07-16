FROM python:3.7.3-slim

# MAINTAINER "peterfeispace@gmail.com"
#用ubuntu国内源替换默认源
# RUN rm /etc/apt/sources.list
# COPY sources.list /etc/apt/sources.list

RUN apt-get update -y && \
    apt-get install -y python3-pip python3-dev 

# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip3 install -r requirements.txt 

COPY . /app

ENTRYPOINT [ "python3" ]

CMD [ "main.py" ]