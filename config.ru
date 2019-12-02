require 'rubygems'
require 'bundler'

Bundler.require

#
# if needed, update this to point to your database
#
# ENV['DATABASE_URL'] ||= "mysql://username:password@localhost/namey"
#

require './namey_app'
run Sinatra::Application
