class HomeController < ApplicationController
  def about
  end

  def top
    @q = Brand.ransack(params[:q])
    @brands = @q.result(distinct: true).page(params[:page]).per(8)
  end
end
