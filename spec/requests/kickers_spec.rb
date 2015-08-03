require 'rails_helper'

RSpec.describe "Kickers", type: :request do
  describe "GET /kickers" do
    it "works! (now write some real specs)" do
      get kickers_path
      expect(response).to have_http_status(200)
    end
  end
end
