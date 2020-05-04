class ShopsController < ApplicationController
  before_action :set_brand, only: [:show]

  def show
  end


  # def index
  #   @shops = Shop.all
  # end
  #
  # def create
  #   @shop = Shop.new(shop_params)
  #   if @shop.save
  #     redirect_to shops_path
  #   else
  #     render "new"
  #   end
  # end

  # def new
  #   @shop = Shop.new
  # end
  #
  # def edit
  # end
  #
  # def destroy
  #   @shop.destroy
  #   redirect_to shops_path
  # end
  #
  # def update
  #   if @shop.update(shop_params)
  #     redirect_to shops_path(@shop)
  #   else
  #     render "edit"
  #   end
  # end

  private
  def set_brand
    @shop = Shop.find(params[:id])
  end

  def shop_params
    params[:shop].permit(
      :name,
      :address,
      :brand_id,
      :shop_url,
      :image_cache,
      :image,
      :image1,
      :image2,
      :image3,
      :remove_image,
    )
  end

end
