#!/usr/bin/env bash
set -o errexit  # Exit immediately if a command exits with a non-zero status.

pip install -r requirements.txt

python manage.py collectstatic --no-input
python manage.py migrate