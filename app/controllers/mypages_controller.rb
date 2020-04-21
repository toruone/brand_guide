class MypagesController < ApplicationController
  before_action :authenticate_user!

  def show
    @favorite_brands = current_user.brands
    @favorite_sites = current_user.info_sites
  end




end
