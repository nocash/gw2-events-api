require "spec_helper"

describe "/events", type: :request do
  include EventsHelper

  it "returns a list of events" do
    get "/events"

    expect(json).to eq events
  end
end
