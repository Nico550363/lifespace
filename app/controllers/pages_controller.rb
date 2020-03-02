class PagesController < ApplicationController

  before_action :move_to_index, except: [:index, :show]

  def index
    @pages = Page.limit(4).order('created_at DESC')
  end

  def new
    @page = Page.new
  end
  
  def create
    Page.create(name: page_params[:name], image: page_params[:image], text: page_params[:text], user_id: current_user.id)
  end

  def destroy
    page = Page.find(params[:id])
    page.destroy if page.user_id == current_user.id
  end

  def show
    @page = Page.find(params[:id])
    @comments = @page.comments.includes(:user)
  end

  private
  def page_params
    params.require(:page).permit(:name, :text, :image)
  end
  
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
