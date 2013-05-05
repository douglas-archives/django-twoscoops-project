#!/bin/bash
source /path/to/.virtualenvs/{{ project_name }}/bin/activate
# you might want to edit it
cd ~/webapps/{{ project_name }}
export DJANGO_SETTINGS_MODULE={{ project_name }}.settings.production
/path/to/.virtualenvs/{{ project_name }}/bin/python2.7 manage.py run_gunicorn -c etc/gunicorn.production.conf --daemon --settings={{ project_name }}.settings.production && sleep 3