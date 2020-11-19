class Api::V1::SellingsController < ApiController

  before_action :validate_api_key
  skip_before_action :verify_authenticity_token

  def show
    @selling = Selling.find(params[:id])
    render json: @selling , except: [:created_at, :updated_at]
  end

  def update
    @selling = Selling.find(params[:id])
    @selling.update(selling_params)
    render json: @selling, except: [:created_at]
  end

  private
  def selling_params
    params.require(:selling).permit(:copies, :selled_copies)
  end

end