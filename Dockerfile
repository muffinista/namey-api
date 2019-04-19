FROM ruby:2.5.5

RUN apt-get update && apt-get install -y build-essential sqlite3 libsqlite3-dev
# mysql-client libmysqlclient-dev default-libmysqlclient-dev

WORKDIR /app
ADD Gemfile* /app/
RUN bundle install

COPY . /app

ENV PORT 18080
EXPOSE 18080
CMD ["rackup", "namey_app.rb", "-o", "0.0.0.0", "-p", "18080"]
#CMD ["puma", "config.ru", "-C", "puma.rb"]
