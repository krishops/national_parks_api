class ParksController < ApplicationController
  def index
    @parks = Park.all
    json_response(@parks)
  end

  def show
    @park = Park.find(params[:id])
    json_response(@park)
  end

  def create
    @park = Park.create!(park_params)
    # if (@park.national = false) && (@park.state = false)
    #   render status: 401, json: {
    #     message: "Either national or state should be set to true"
    #   }
    # elsif (@park.national = true) && (@park.state = true)
    #   render status: 401, json: {
    #     message: "Either national or state should be set to true but not both"
    #   }
    # else
      json_response(@park, :created)
    # end
  end

  def update
    @park = Park.find(params[:id])
    @park.update(park_params)
    if (@park.national = false) && (@park.state = false)
      render status: 401, json: {
        message: "Either national or state should be set to true"
      }
    elsif (@park.national = true) && (@park.state = true)
      render status: 401, json: {
        message: "Either national or state should be set to true but not both"
      }
    else
      render status: 200, json: {
        message: "Park successfully updated"
      }
    end
  end

  def destroy
    @park = Park.find(params[:id])
    @park.destroy
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def park_params
    params.permit(:name, :location, :national, :state)
  end
end
