class Api::V1::ShopsController < ApiController

  before_action :set_shop

  def show
    render json: @shop
  end

  def set_shop
    @shop = Shop.find(params[:id])
  end

end
