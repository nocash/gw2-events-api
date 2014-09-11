require "spec_helper"

describe "/" do
  it "is OK" do
    get "/"
    expect(last_response).to be_ok
  end
end
