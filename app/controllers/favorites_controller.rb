class FavoritesController < ApplicationController
  def create
    @favorite = current_user.favorites.create(page_id: params[:page_id])
    @page = Page.find(params[:page_id])
    render 'index.js.haml'
  end
  
  def destroy
    @favorite = current_user.favorites.find_by(page_id: params[:id].to_i).destroy
    @page = Page.find(params[:id])
    render 'index.js.haml'
  end
end
