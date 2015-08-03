require 'rails_helper'

RSpec.describe "RunningBacks", type: :request do
  describe "GET /running_backs" do
    it "works! (now write some real specs)" do
      get running_backs_path
      expect(response).to have_http_status(200)
    end
  end
end
