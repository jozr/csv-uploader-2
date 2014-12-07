require 'sinatra'
require 'sinatra/flash'
require 'sinatra/activerecord'

Dir.glob('./lib/*.rb').each { |f| require f }
set :database, 'postgres://localhost/csv_importer'

get '/' do
  erb :index
end