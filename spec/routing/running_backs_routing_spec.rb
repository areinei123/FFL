require "rails_helper"

RSpec.describe RunningBacksController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/running_backs").to route_to("running_backs#index")
    end

    it "routes to #new" do
      expect(:get => "/running_backs/new").to route_to("running_backs#new")
    end

    it "routes to #show" do
      expect(:get => "/running_backs/1").to route_to("running_backs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/running_backs/1/edit").to route_to("running_backs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/running_backs").to route_to("running_backs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/running_backs/1").to route_to("running_backs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/running_backs/1").to route_to("running_backs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/running_backs/1").to route_to("running_backs#destroy", :id => "1")
    end

  end
end
