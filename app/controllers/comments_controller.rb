class CommentsController < ApplicationController
  load_and_authorize_resource
  def create
    @track = Track.find(params[:track_id])
    @comment = Comment.build_from(@track, current_user.id, params[:comment][:body] )
    flash[:notice] = "That comment did not save" if !@comment.save
    redirect_to @track
  end

  def destroy
    @track = Track.find(params[:track_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to @track
  end

  def edit
    @track = Track.find(params[:track_id])
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update_attributes(params[:comment])
    redirect_to track_path(params[:track_id])
  end

end