class CommentsController < ApplicationController
  def create
    comment = Comment.create(text: comment_params[:text], page_id: comment_params[:page_id], user_id: current_user.id)
    redirect_to "/pages/#{comment.page.id}"
  end

  private
  def comment_params
    params.permit(:text, :page_id)
  end
end

