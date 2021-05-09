FROM ruby:2.5.7

RUN apt-get update -qq && \
apt-get install -y build-essential \
									 libpq-dev \
									 nodejs \
									 default-mysql-client \
									 vim

RUN mkdir /railstutorial_3

WORKDIR /railstutorial_3

COPY Gemfile /railstutorial_3/Gemfile
COPY Gemfile.lock /railstutorial_3/Gemfile.lock

RUN bundle install

COPY . /railstutorial_3