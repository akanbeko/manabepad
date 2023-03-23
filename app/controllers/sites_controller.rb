class SitesController < ApplicationController
  def index
  end
  
  def new
    @site = Site.new
  end
end
