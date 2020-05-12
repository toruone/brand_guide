class InfoUsersController < ApplicationController
  def create
    info_user = current_user.info_users.find_or_initialize_by(info_site_id: params[:info_site_id])
    info_user.save
    redirect_to info_sites_path, notice: "Add to MyPage Succssfully"
  end

  def destroy
    info_user = InfoUser.find_by(info_site_id: params[:info_site_id], user_id: current_user.id)
    info_user.destroy
    redirect_to info_sites_path, notice: "Delete done"
  end


end
