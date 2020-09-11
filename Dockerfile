FROM ruby:latest

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

WORKDIR /usr/src/app

COPY . .
RUN gem install bundler
RUN gem install rails -v '~> 6.0.0'
RUN gem install bundler:1.17.3
RUN bundle install
