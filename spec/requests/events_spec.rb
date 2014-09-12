require "spec_helper"

describe "/events", type: :request do
  include EventsHelper

  it "returns a list of all events" do
    get "/events"

    expect(json).to eq events
  end
end
