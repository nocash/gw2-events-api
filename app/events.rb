require "sinatra"
require "sinatra/json"

get "/" do
  "OK"
end

get "/events" do
  json []
end
