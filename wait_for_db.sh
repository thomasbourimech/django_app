#!/bin/bash

echo "Waiting Postgres to launch on 5432..."
while ! nc -z db 5432; do   
    sleep 0.1 # wait for 1/10 of the second before check again
  done
  echo "Postgres launched"
python manage.py runserver 0.0.0.0:8000
