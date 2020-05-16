class BrandUsersController < ApplicationController
  def create
    brand_user = current_user.brand_users.find_or_initialize_by(brand_id: params[:brand_id])
    brand_user.save
    redirect_to brand_path(params[:brand_id]), notice: "Add to MyPage Succssfully!"
  end

  def destroy
    brand_user = BrandUser.find_by!(brand_id: params[:brand_id], user_id: current_user.id)
    brand_user.destroy
    redirect_to brand_path(params[:brand_id]), notice: "おDelete done"
  end


end
