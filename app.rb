require 'sinatra'
require 'sinatra/flash'
require 'sinatra/activerecord'

Dir.glob('./lib/*.rb').each { |f| require f }

get '/' do
  erb :index
end