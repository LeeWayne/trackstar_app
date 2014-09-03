class TracksController < ApplicationController
  load_and_authorize_resource
  def index
    @tracks = Track.all
  end
  
  def new
    @track = Track.new
  end

  def create
    current_user.tracks.create(params[:track])
    redirect_to tracks_path
  end

  def show
    @track = Track.find(params[:id])
    @comment = Comment.new
    @comments = @track.comment_threads
  end

  def destroy
    track = Track.find(params[:id])
    track.destroy
    redirect_to tracks_path
  end

  def edit
    @track = Track.find(params[:id])
  end

  def update
    @track = Track.find(params[:id])
    @track.update_attributes(params[:track])
    redirect_to(@track)
  end

end