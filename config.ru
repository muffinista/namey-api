require 'rubygems'
require 'bundler'

Bundler.require

# update this to point to your database
ENV['DATABASE_URL'] = "mysql://root@localhost/namey"

require './namey_app'
run Sinatra::Application
