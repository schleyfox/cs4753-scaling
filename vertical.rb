require 'rubygems'
require 'sinatra'

get '/' do
  sleep(0.25)
  "foo"
end
