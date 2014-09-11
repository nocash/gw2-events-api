ENV["RACK_ENV"] = "test"

# require "spec_helper"
require_relative "../../app/events"
require "rack/test"

def app
  Sinatra::Application
end

describe "/" do
  include Rack::Test::Methods

  it "is OK" do
    get "/"
    expect(last_response).to be_ok
  end
end
