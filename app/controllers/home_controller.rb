class HomeController < ApplicationController
  def index

  end

  def services

  end

  def about
    @grant_story = GrantStory.new
    @stories = GrantStory.all
  end

  def questions

  end

end
