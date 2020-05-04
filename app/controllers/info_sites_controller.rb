class InfoSitesController < ApplicationController
  # before_action :set_brand, only: [:show, :edit, :update, :destroy]
  # def show
  # end

  def index
    @info_sites = InfoSite.all
  end

  # def create
  #   @info_site = InfoSite.new(info_site_params)
  #   if @info_site.save
  #     redirect_to info_sites_path
  #   else
  #     render "new"
  #   end
  # end
  #
  # def new
  #   @info_site = InfoSite.new
  # end
  #
  # def edit
  # end
  #
  # def destroy
  #   @info_site.destroy
  #   redirect_to info_sites_path
  # end
  #
  # def update
  #   if @info_site.update(info_site_params)
  #     redirect_to info_sites_path(@info_site)
  #   else
  #     render "edit"
  #   end
  # end

  private
  def set_brand
    @info_site = InfoSite.find(params[:id])
  end

  def info_site_params
    params[:info_site].permit(
      :name,
      :url,
      :for,
      :description,
      :image_cache,
      :image,
      :remove_image,
    )
  end

end
