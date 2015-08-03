require "rails_helper"

RSpec.describe KickersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/kickers").to route_to("kickers#index")
    end

    it "routes to #new" do
      expect(:get => "/kickers/new").to route_to("kickers#new")
    end

    it "routes to #show" do
      expect(:get => "/kickers/1").to route_to("kickers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/kickers/1/edit").to route_to("kickers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/kickers").to route_to("kickers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/kickers/1").to route_to("kickers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/kickers/1").to route_to("kickers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/kickers/1").to route_to("kickers#destroy", :id => "1")
    end

  end
end
