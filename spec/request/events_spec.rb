require "spec_helper"

describe "/", type: :request do
  it "is OK" do
    get "/"

    expect(last_response).to be_ok
  end
end

describe "/events", type: :request do
  it "returns a list of events" do
    get "/events"

    expect(last_response).to be_ok
    expect(json).to eq events_json
  end
end
