require 'rubygems'
require 'sinatra'

get '/' do
  sleep(0.5)
  "foo"
end
