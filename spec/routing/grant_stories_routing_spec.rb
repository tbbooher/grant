require "spec_helper"

describe GrantStoriesController do
  describe "routing" do

    it "routes to #index" do
      get("/grant_stories").should route_to("grant_stories#index")
    end

    it "routes to #new" do
      get("/grant_stories/new").should route_to("grant_stories#new")
    end

    it "routes to #show" do
      get("/grant_stories/1").should route_to("grant_stories#show", :id => "1")
    end

    it "routes to #edit" do
      get("/grant_stories/1/edit").should route_to("grant_stories#edit", :id => "1")
    end

    it "routes to #create" do
      post("/grant_stories").should route_to("grant_stories#create")
    end

    it "routes to #update" do
      put("/grant_stories/1").should route_to("grant_stories#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/grant_stories/1").should route_to("grant_stories#destroy", :id => "1")
    end

  end
end
