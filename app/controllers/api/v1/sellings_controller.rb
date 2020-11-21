class Api::V1::SellingsController < ApiController

  before_action :validate_api_key
  skip_before_action :verify_authenticity_token

  def index
    render json: Selling.all
  end

  def show
    @selling = Selling.find(params[:id])
    render json: @selling
  end

  def update
    @selling = Selling.find(params[:id])

    if @selling.update(selling_params)
      $shop = Shop.find(@selling.shop_id)
      $shop.save
      render json: @selling, status: :ok
    else
      render json: @selling.errors, status: :unprocessable_entity
    end
  end

  private
  def selling_params
    params.require(:selling).permit(:copies, :selled_copies)
  end

end
