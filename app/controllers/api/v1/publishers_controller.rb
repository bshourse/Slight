class Api::V1::PublishersController < ApiController

  before_action :validate_api_key
  skip_before_action :verify_authenticity_token

  def show
    @publisher = Publisher.find(params[:id])
    render json: @publisher, include: [:shops]
  end

  def update
    @publisher = Publisher.find(params[:id])
    @publisher.update(publisher_params)
    render json: @publisher
  end

  private
  def publisher_params
    params.require(:publisher).permit(:name)
  end

end