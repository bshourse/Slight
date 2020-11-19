class ApiController < ApplicationController

  before_action :set_default_format

  def has_valid_api_key?
    request.headers['X-Api-Key'] == AUTH['api-key']
  end

  def validate_api_key
    return head :forbidden unless has_valid_api_key?
  end

  private
  def set_default_format
    request.format = :json
  end

end
