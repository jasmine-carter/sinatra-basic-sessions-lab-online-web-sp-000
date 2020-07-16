ENV['SINATRA_ENV'] ||= "development"
SESSION_SECRET = SecureRandom.hex(64)
require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])
require 'sysrandom'

require './app'
require_all 'models'
