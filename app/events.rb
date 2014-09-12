require "sinatra"
require "sinatra/json"
require "sinatra/reloader" if development?

require_relative "models/event"

get "/" do
  "OK"
end

get "/events" do
  json Event.all
end
