# frozen_string_literal: true

class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def get_homes
    @location = Location.find_by!(id: params[:location_id])
    redirect_to location_homes_path(@location)
  end
end
