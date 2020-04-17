class InfoUsersController < ApplicationController
  def create
    info_user = current_user.info_users.build(info_site_id: params[:info_site_id])
    info_user.save
    redirect_to info_sites_path, notice: "お気に入りに追加しました。"
  end

  def destroy
    info_user = InfoUser.find_by(info_site_id: params[:info_site_id], user_id: current_user.id)
    info_user.destroy
    redirect_to info_sites_path, notice: "お気に入りから削除しました。"
  end


end
