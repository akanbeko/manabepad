class SitesController < ApplicationController
  def index
    @sites = Site.includes(:user).order("created_at DESC")
  end

  def new
    @site = Site.new
  end

  def create
    @site = Site.new(site_params)
    if @site.save!
      redirect_to root_path
    else
      render :new
    end
  end


  private

  def site_params
    params.require(:site) .permit(:image, :sitename, :home_address, :site_address, :progress, :construcion_date, 
      :site_phone, :remark).merge(user_id: current_user.id)
  end
end
