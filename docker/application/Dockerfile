FROM ruby:2.1.5

RUN gem install bundler
# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

RUN mkdir -p ./myapp
WORKDIR ./myapp

COPY . ./myapp

RUN bundle install

RUN apt-get update

RUN apt-get install nginx

ADD config/container/nginx-sites.conf /etc/nginx/sites-enabled/default
