require "spec_helper"

describe PrayerRequestsController do
  describe "routing" do

    it "routes to #index" do
      get("/prayer_requests").should route_to("prayer_requests#index")
    end

    it "routes to #new" do
      get("/prayer_requests/new").should route_to("prayer_requests#new")
    end

    it "routes to #show" do
      get("/prayer_requests/1").should route_to("prayer_requests#show", :id => "1")
    end

    it "routes to #edit" do
      get("/prayer_requests/1/edit").should route_to("prayer_requests#edit", :id => "1")
    end

    it "routes to #create" do
      post("/prayer_requests").should route_to("prayer_requests#create")
    end

    it "routes to #update" do
      put("/prayer_requests/1").should route_to("prayer_requests#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/prayer_requests/1").should route_to("prayer_requests#destroy", :id => "1")
    end

  end
end
