FROM python:3

RUN apt-get update && apt-get install -y \
    netcat \
    nano 

ENV PYTHONUNBUFFERED=1
RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/
COPY wait_for_db.sh /wait_for_db.sh
RUN chmod +x /wait_for_db.sh
RUN pip install -r requirements.txt
COPY . /code/
