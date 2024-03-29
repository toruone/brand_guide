class BrandsController < ApplicationController
  before_action :set_brand, only: [:show]
  def show
  end

  def index
    @q = Brand.ransack(params[:q])
    @brands = @q.result(distinct: true).page(params[:page]).per(16)
  end

  # def create
  #   @brand = Brand.new(brand_params)
  #   if @brand.save
  #     redirect_to brands_path
  #   else
  #     render "new"
  #   end
  # end
  #
  # def new
  #   @brand = Brand.new
  # # end
  #
  # def edit
  # end
  #
  # def destroy
  #   @brand.destroy
  #   redirect_to brands_path
  # end
  #
  # def update
  #   if @brand.update(brand_params)
  #     redirect_to brands_path(@brand)
  #   else
  #     render "edit"
  #   end
  # end

  private
  def set_brand
    @brand = Brand.find(params[:id])
  end

  def brand_params
    params[:brand].permit(
      :name,
      :country,
      :since,
      :description,
      :image_cache,
      :image_logo,
      :image1,
      :image2,
      :image3,
      :remove_image,
      :hp_url,
    )
  end

end
