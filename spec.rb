ENV['RACK_ENV'] = 'test'

require_relative 'hello_world'  # <-- our app
require 'rspec'                 # <-- test framework
require 'rack/test'             # <-- test framework

describe 'The HelloWorld App' do
  include Rack::Test::Methods

  it "says hello world" do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to include('Hello World')
  end

  it "says hello to a person" do
    get '/', :name => 'Simon'
    expect(last_response).to be_ok
    expect(last_response.body).to include('Hello World Simon')
  end

end
