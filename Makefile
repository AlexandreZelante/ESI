prepare_db:	create_tables migrate

create_tables:
	docker-compose run web psql -c 'create database myapp_development;' -U postgres
	docker-compose run web psql -c 'create database myapp_test;' -U postgres

migrate:
	docker-compose run web rake db:migrate
	docker-compose run web rake db:migrate RAILS_ENV=test

up:
	docker-compose up -d

build:
	docker-compose build

cucumber:
	docker-compose run web xvfb-run -a rake cucumber

rspec:
	docker-compose run web rake spec
