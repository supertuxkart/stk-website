FROM ruby:3.0.2

ENV LC_ALL=C.UTF-8=value

ADD . /srv/jekyll

WORKDIR /srv/jekyll

RUN apt-get update && apt-get install -y libvips42 libvips-tools

RUN bundle install --gemfile=Gemfile

EXPOSE 4000
