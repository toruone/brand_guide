class Login::MypagesController < Login::ApplicationController
  before_action :authenticate_user!

  def show
    @favorite_brands = current_user.brands.page(params[:page]).per(12)
    @favorite_sites = current_user.info_sites
  end




end
