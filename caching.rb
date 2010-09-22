require 'rubygems'
require 'sinatra'
require 'memcache'

CACHE = MemCache.new 'localhost:11211', :namespace => "cs4753-scaling"

get '/' do
  value = CACHE.get("sample_cache")
  return value if value

  sleep(0.5)
  value = "foo"
  CACHE.set("sample_cache", value)
  value
end
