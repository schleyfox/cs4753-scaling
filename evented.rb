require 'rubygems'
require 'sinatra'
require 'sinatra/base'
require 'sinatra/async'

module Sinatra
  register Sinatra::Async
end

aget '/' do
  EventMachine.add_timer(0.5) do
    body "foo"
  end
end
