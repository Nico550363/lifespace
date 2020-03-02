class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    # @pages = Page.where(user_id: current_user.id).order("created_at DESC")
    @pages = user.pages.order("created_at DESC")
  end
end
