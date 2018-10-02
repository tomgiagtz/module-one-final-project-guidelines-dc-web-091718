require 'bundler'
Bundler.require
require_relative "../app/models/period.rb"
require_relative "../app/models/region.rb"
require_relative "../app/models/cost.rb"

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')

require_all 'lib'
# require_all 'app/models'
