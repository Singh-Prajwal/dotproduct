#!/usr/bin/env bash
set -o errexit

# Change to the directory containing manage.py
cd /opt/render/project/src

# Upgrade pip and install requirements
python -m pip install --upgrade pip
pip install -r requirements.txt

# Collect static files
python manage.py collectstatic --no-input

# Run migrations
python manage.py migrate