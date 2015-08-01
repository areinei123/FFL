require "rails_helper"

RSpec.describe WideReceiversController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/wide_receivers").to route_to("wide_receivers#index")
    end

    it "routes to #new" do
      expect(:get => "/wide_receivers/new").to route_to("wide_receivers#new")
    end

    it "routes to #show" do
      expect(:get => "/wide_receivers/1").to route_to("wide_receivers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/wide_receivers/1/edit").to route_to("wide_receivers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/wide_receivers").to route_to("wide_receivers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/wide_receivers/1").to route_to("wide_receivers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/wide_receivers/1").to route_to("wide_receivers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/wide_receivers/1").to route_to("wide_receivers#destroy", :id => "1")
    end

  end
end
