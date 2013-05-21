require 'spec_helper'

describe "GrantStories" do
  describe "GET /grant_stories" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get grant_stories_path
      response.status.should be(200)
    end
  end
end
