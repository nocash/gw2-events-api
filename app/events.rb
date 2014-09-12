require "sinatra"
require "sinatra/json"
require "sinatra/reloader" if development?

class App < Sinatra::Application
  get "/" do
    redirect "/events"
  end

  get "/events" do
    json Event.all
  end
end

require_relative "models/init"
