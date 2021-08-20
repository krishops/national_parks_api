class ParksController < ApplicationController
  
  def index
    if location = params[:location]
      @location = Park.location(location)
      json_response(@location) 
    elsif page = params[:page]
      @park_page = Park.page(page)
      json_response(@park_page)
    else
      @park_all = Park.all
      json_response(@park_all)
    end
  end

  def state
    @state = Park.state
    json_response(@state)
  end

  def national
    @national = Park.national
    json_response(@national)
  end

  def show
    @park = Park.find(params[:id])
    json_response(@park)
  end

  def create
    @park = Park.create!(park_params)
    if @park.national == @park.state
      render status: 401, json: {
        message: "Set either national or state parameter to true"
      }
    else
      json_response(@park, :created)
    end
  end

  def update
    @park = Park.find(params[:id])
    @park.update(park_params)
    if @park.national == @park.state
      render status: 401, json: {
        message: "Either national or state parameter should be set to true"
      }
    else
      render status: 200, json: {
        message: "Park successfully updated"
      }
    end
  end

  def destroy
    @park = Park.find(params[:id])
    if @park.destroy
      render status: 200, json: {
        message: "This review has been deleted"
      }
    end
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def park_params
    params.permit(:name, :location, :national, :state)
  end
end
