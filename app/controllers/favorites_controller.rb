class FavoritesController < ApplicationController
  def create
    @favorite = Favorite.create(user_id: current_user.id, page_id: params[:page_id])
    @favorites = Favorite.where(page_id: params[:page_id])
    get_page
  end

  def destroy
    @favorite = Favorite.find_by(user_id: current_user.id, page_id: params[:page_id])
    @favorite.destroy
    @favorites = Favorite.where(page_id: params[:page_id])
    get_page
  end

  def get_page
    @page = Page.find(params[:page_id])
  end
end
