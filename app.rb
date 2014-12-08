require 'sinatra'
require 'sinatra/flash'
require 'sinatra/activerecord'

Dir.glob('./lib/*.rb').each { |f| require f }
set :database, 'postgres://localhost/csv_importer'

get '/' do
  erb :index
end

post '/' do
  file = params['upload']
  File.open('uploads/' + file[:filename], "w") do |f|
    f.write(file[:tempfile].read)
  end
  file_name = File.absolute_path('uploads/' + file[:filename]) 
  read_file = CSV.read(file_name)
  return "file: #{read_file}"
end