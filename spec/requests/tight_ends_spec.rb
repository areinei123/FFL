require 'rails_helper'

RSpec.describe "TightEnds", type: :request do
  describe "GET /tight_ends" do
    it "works! (now write some real specs)" do
      get tight_ends_path
      expect(response).to have_http_status(200)
    end
  end
end
