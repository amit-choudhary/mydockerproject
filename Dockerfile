FROM ruby:2.1.5

RUN gem install bundler
# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . /usr/src/app

RUN bundle install

RUN apt-get update && apt-get install -y sqlite3

EXPOSE 3000
CMD ["rails", "server" ,"-b", "0.0.0.0"]
