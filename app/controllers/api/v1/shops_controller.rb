class Api::V1::ShopsController < ApiController

  before_action :validate_api_key
  skip_before_action :verify_authenticity_token

  def show
    @shop = Shop.find(params[:id])
    render json: @shop
  end

  def update
    @shop = Shop.find(params[:id])
    @shop.update(shop_params)
    render json: @shop
  end

  private
  def shop_params
    params.require(:shop).permit(:name)
  end

end
