FROM ruby:3.0.1-alpine3.12

WORKDIR /app

RUN set -eux \
  && apk add --no-cache libxml2 mariadb-dev tzdata nodejs build-base postgresql-dev yarn # python2 make g++

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY package.json yarn.lock ./
RUN yarn install

COPY . .

CMD rails s -b 0.0.0.0


