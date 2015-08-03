require "rails_helper"

RSpec.describe QBsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/qbs").to route_to("qbs#index")
    end

    it "routes to #new" do
      expect(:get => "/qbs/new").to route_to("qbs#new")
    end

    it "routes to #show" do
      expect(:get => "/qbs/1").to route_to("qbs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/qbs/1/edit").to route_to("qbs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/qbs").to route_to("qbs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/qbs/1").to route_to("qbs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/qbs/1").to route_to("qbs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/qbs/1").to route_to("qbs#destroy", :id => "1")
    end

  end
end
