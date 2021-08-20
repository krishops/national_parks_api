class StateController < ApplicationController

  def index
    @states = {"park": "Champoeg"}
    json_response(@states)
  end


  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

end