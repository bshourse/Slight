class Api::V1::ShopsController < ApiController

  before_action :validate_api_key
  skip_before_action :verify_authenticity_token

  def index
    render json: Shop.all
  end

  def show
    @shop = Shop.find(params[:id])
    render json: @shop
  end

  def update
    @shop = Shop.find(params[:id])

    if @shop.update(shop_params)
      render json: @shop, status: :ok
    else
      render json: @shop.errors, status: :unprocessable_entity
    end
  end

  private
  def shop_params
    params.require(:shop).permit(:name)
  end

end
