FROM ruby:3.0.0
RUN apt update -qq && apt install -y build-essential libpq-dev nodejs npm
RUN npm install -g yarn
RUN mkdir rails_app
WORKDIR rails_app
COPY Gemfile rails_app/Gemfile
COPY Gemfile.lock rails_app/Gemfile.lock
RUN cd rails_app && bundle install
COPY . rails_app/