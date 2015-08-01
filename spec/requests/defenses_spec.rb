require 'rails_helper'

RSpec.describe "Defenses", type: :request do
  describe "GET /defenses" do
    it "works! (now write some real specs)" do
      get defenses_path
      expect(response).to have_http_status(200)
    end
  end
end
