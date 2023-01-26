FROM ruby:3.1 as base

COPY Gemfile .
COPY Gemfile.lock .

RUN bundle install

COPY . .

RUN bundle exec nanoc compile

FROM nginx as run

COPY --from=base output /usr/share/nginx/html
