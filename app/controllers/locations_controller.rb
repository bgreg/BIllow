# frozen_string_literal: true

class LocationsController < ApplicationController
  def index
    @locations = Location.all
    if params[:location_id]
      @selected_locations = Location.find(params[:location_id])
    end
  end
end
