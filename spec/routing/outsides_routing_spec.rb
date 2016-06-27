require "rails_helper"

RSpec.describe OutsidesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/outsides").to route_to("outsides#index")
    end

    it "routes to #new" do
      expect(:get => "/outsides/new").to route_to("outsides#new")
    end

    it "routes to #show" do
      expect(:get => "/outsides/1").to route_to("outsides#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/outsides/1/edit").to route_to("outsides#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/outsides").to route_to("outsides#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/outsides/1").to route_to("outsides#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/outsides/1").to route_to("outsides#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/outsides/1").to route_to("outsides#destroy", :id => "1")
    end

  end
end
