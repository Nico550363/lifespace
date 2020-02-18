class PagesController < ApplicationController

  # before_action :move_to_index, except: :index

  # protect_from_forgery with: :null_session

  def index
    @pages = Page.limit(4).order('created_at DESC')
  end

  def new
    @page = Page.new
  end
  
  def create
    Page.create(page_params)
  end

  private
  def page_params
    params.require(:page).permit(:name, :text, :image)
  end
  
  # def move_to_index
  #   redirect_to action: :index unless user_signed_in?
  # end
end
