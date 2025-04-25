FROM ruby:3.3.8

RUN apt-get update && apt-get install -y build-essential sqlite3 libsqlite3-dev

RUN gem install bundler:2.6.8

WORKDIR /app
ADD Gemfile* /app/
RUN bundle install

COPY . /app

ENV PORT 18001
EXPOSE 18001
CMD ["puma", "config.ru", "-C", "puma.rb"]
