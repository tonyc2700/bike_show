class CommentsController < ApplicationController

  def create
  @comment = Comment.new(params[:comment].permit(:author_name, :body, :bike_id))
  @comment.bike_id = params[:bike_id]
  @comment.save

  redirect_to bike_path(@comment.bike)
  end

end
