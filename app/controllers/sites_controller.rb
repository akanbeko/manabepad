class SitesController < ApplicationController
  before_action :authenticate_user!, except: [:index,:show]
  before_action :move_to_index, only: [:show, :edit, :update, :destroy]
  before_action :side_bar_site

  def index

  end

  def new
    @site = Site.new
 
  end

  def create
    @site = Site.new(site_params)
    if @site.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show

  end

  def edit
    unless @site.user_id == current_user.id 
      redirect_to action: :index
    end
  end

  def update
    if @site.update(site_params)
       redirect_to site_path(site_params)
     else
       render :edit
     end
   end

  def destroy
    if @site.user_id == current_user.id
      @site.destroy
        end
  redirect_to root_path
  end


  private

  def site_params
    params.require(:site) .permit(:image, :sitename, :home_address, :site_address, :progress_id, :construcion_date, 
      :site_phone, :remark).merge(user_id: current_user.id)
  end


  def move_to_index
    @site = Site.find(params[:id])
  end
def side_bar_site
  @sites = Site.includes(:user).order("created_at DESC")
end

end
