FROM ruby:2.1.5

RUN gem install bundler
# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

WORKDIR /var/www/apps/mydockerproject

RUN bundle install

RUN apt-get update

RUN apt-get install nginx

ADD ./nginx-sites.conf /etc/nginx/sites-enabled/default
