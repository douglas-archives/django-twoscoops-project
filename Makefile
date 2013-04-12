clean:
	@find {{ project_name }}/ -name "*.pyc" -delete

deps:
	@pip install -r requirements/test.txt

test: deps clean
	@python {{ project_name }}/manage.py test --settings={{ project_name }}.settings.test

run:
	@python {{ project_name }}/manage.py runserver --settings={{ project_name }}.settings.local