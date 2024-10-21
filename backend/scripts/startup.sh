#!/bin/bash

python manage.py collectstatic --no-input
python manage.py migrate --noinput

waitress-serve --port=$PORT samuel_test_app_21_o_1171.wsgi:application
