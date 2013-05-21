class GrantStoriesController < ApplicationController
  # GET /grant_stories
  # GET /grant_stories.json

  before_filter :authenticate_user!, except: [:index, :create, :show, :new]

  def index
    @grant_stories = GrantStory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @grant_stories }
    end
  end

  # GET /grant_stories/1
  # GET /grant_stories/1.json
  def show
    @grant_story = GrantStory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @grant_story }
    end
  end

  # GET /grant_stories/new
  # GET /grant_stories/new.json
  def new
    @grant_story = GrantStory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @grant_story }
    end
  end

  # GET /grant_stories/1/edit
  def edit
    @grant_story = GrantStory.find(params[:id])
  end

  # POST /grant_stories
  # POST /grant_stories.json
  def create
    @grant_story = GrantStory.new(params[:grant_story])

    respond_to do |format|
      if @grant_story.save
        format.html { redirect_to home_about_path, notice: 'Thank you. Your story was successfully created.' }
        format.json { render json: @grant_story, status: :created, location: @grant_story }
      else
        format.html { render action: "new" }
        format.json { render json: @grant_story.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /grant_stories/1
  # PUT /grant_stories/1.json
  def update
    @grant_story = GrantStory.find(params[:id])

    respond_to do |format|
      if @grant_story.update_attributes(params[:grant_story])
        format.html { redirect_to @grant_story, notice: 'Grant story was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @grant_story.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grant_stories/1
  # DELETE /grant_stories/1.json
  def destroy
    @grant_story = GrantStory.find(params[:id])
    @grant_story.destroy

    respond_to do |format|
      format.html { redirect_to grant_stories_url }
      format.json { head :no_content }
    end
  end
end
