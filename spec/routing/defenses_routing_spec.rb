require "rails_helper"

RSpec.describe DefensesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/defenses").to route_to("defenses#index")
    end

    it "routes to #new" do
      expect(:get => "/defenses/new").to route_to("defenses#new")
    end

    it "routes to #show" do
      expect(:get => "/defenses/1").to route_to("defenses#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/defenses/1/edit").to route_to("defenses#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/defenses").to route_to("defenses#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/defenses/1").to route_to("defenses#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/defenses/1").to route_to("defenses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/defenses/1").to route_to("defenses#destroy", :id => "1")
    end

  end
end
