class BrandUsersController < ApplicationController
  def create
    brand_user = current_user.brand_users.build(brand_id: params[:brand_id])
    brand_user.save
    redirect_to brand_path(params[:brand_id]), notice: "お気に入りに追加しました。" 
  end

  def destroy
    brand_user = BrandUser.find_by(brand_id: params[:brand_id], user_id: current_user.id)
    brand_user.destroy
    redirect_to brand_path(params[:brand_id]), notice: "お気に入りから削除しました。"
  end


end
