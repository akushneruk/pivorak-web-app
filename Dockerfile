FROM ruby:2.3.1
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /app
WORKDIR /app
COPY . /app/
RUN bundle install