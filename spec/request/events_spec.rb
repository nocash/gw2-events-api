require "spec_helper"

describe "/events", type: :request do
  it "returns a list of events" do
    get "/events"

    expect(last_response).to be_ok
    expect(json).to eq events_json
  end
end
