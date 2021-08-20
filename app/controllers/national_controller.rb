class NationalController < ApplicationController

  def index
    @nationals = {"park": "Yosemite"}
    json_response(@nationals)
  end


  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

end