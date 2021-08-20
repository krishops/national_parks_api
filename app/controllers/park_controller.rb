class AllController < ApplicationController

  def index
    @parks = National.all && State.all
    json_response(@parks)
  end


  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

end