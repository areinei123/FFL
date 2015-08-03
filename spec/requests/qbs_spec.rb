require 'rails_helper'

RSpec.describe "Qbs", type: :request do
  describe "GET /qbs" do
    it "works! (now write some real specs)" do
      get qbs_path
      expect(response).to have_http_status(200)
    end
  end
end
