require 'dotenv'
Dotenv.load('config/local.env')

require './config/application'

use OTR::ActiveRecord::ConnectionManagement

run Rack::Cascade.new([
  Routes::Base,
  # add versions as desired
])