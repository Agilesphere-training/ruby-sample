require 'sinatra'

get '/' do
  "Hello World #{params[:name]}".strip
  "Hello World Have a nice day"
end
