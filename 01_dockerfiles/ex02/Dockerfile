FROM ruby

RUN apt-get update && apt-get install -y \
	nodejs \
	sqlite3 \
	&& gem install rails

WORKDIR /opt/app

ONBUILD COPY . /opt/app
ONBUILD RUN bundle install && rails db:migrate && rails db:seed 
