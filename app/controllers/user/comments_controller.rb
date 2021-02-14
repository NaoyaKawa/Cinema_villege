class User::CommentsController < ApplicationController
  def create
    theater = Theater.find(params[:theater_id])
    comment = current_user.comments.new(comment_params)
    comment.theater_id = theater.id
    comment.save
    redirect_to theaters_path(theater)
  end

  def destroy
    Comment.find_by(id: params[:id], theater_id: params[:theater_id]).destroy
    redirect_to theaters_path(params[:theater_id])
  end

  private
  def comment_params
    params.require(:comment).permit(:comment)
  end
end
