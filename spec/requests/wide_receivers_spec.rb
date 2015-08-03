require 'rails_helper'

RSpec.describe "WideReceivers", type: :request do
  describe "GET /wide_receivers" do
    it "works! (now write some real specs)" do
      get wide_receivers_path
      expect(response).to have_http_status(200)
    end
  end
end
