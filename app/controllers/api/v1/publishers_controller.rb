class Api::V1::PublishersController < ApiController

  before_action :set_publisher

  def show
    render json: @publisher, include: ['shops']
  end

  def set_publisher
    @publisher = Publisher.find(params[:id])
  end

end