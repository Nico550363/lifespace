class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    # @pages = Page.where(user_id: current_user.id).order("created_at DESC")
    @pages = current_user.pages.order("created_at DESC")
  end
end
