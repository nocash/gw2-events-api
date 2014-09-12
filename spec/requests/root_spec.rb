require "spec_helper"

describe "/", type: :request do
  it "is OK" do
    get "/"

    expect(last_response).to be_redirect
    expect(last_response.location).to end_with "/events"
  end
end
