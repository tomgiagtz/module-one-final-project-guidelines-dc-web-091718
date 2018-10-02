require 'bundler'
require 'nokogiri'
require 'watir'
require 'pry'
require 'sinatra/activerecord'
require_relative "../app/models/period.rb"
require_relative "../app/models/region.rb"
Bundler.require

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
require_relative "../lib/access_api.rb"
