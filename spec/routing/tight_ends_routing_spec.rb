require "rails_helper"

RSpec.describe TightEndsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/tight_ends").to route_to("tight_ends#index")
    end

    it "routes to #new" do
      expect(:get => "/tight_ends/new").to route_to("tight_ends#new")
    end

    it "routes to #show" do
      expect(:get => "/tight_ends/1").to route_to("tight_ends#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/tight_ends/1/edit").to route_to("tight_ends#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/tight_ends").to route_to("tight_ends#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/tight_ends/1").to route_to("tight_ends#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/tight_ends/1").to route_to("tight_ends#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/tight_ends/1").to route_to("tight_ends#destroy", :id => "1")
    end

  end
end
