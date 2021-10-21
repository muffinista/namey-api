FROM ruby:2.7.4

RUN apt-get update && apt-get install -y build-essential sqlite3 libsqlite3-dev
# mysql-client libmysqlclient-dev default-libmysqlclient-dev

RUN gem install bundler:1.17.3

WORKDIR /app
ADD Gemfile* /app/
RUN bundle install

COPY . /app

ENV PORT 18001
EXPOSE 18001
CMD ["puma", "config.ru", "-C", "puma.rb"]
