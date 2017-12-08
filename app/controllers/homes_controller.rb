# frozen_string_literal: true

class HomesController < ApplicationController
  def index
    @location = Location.find_by(id: params[:location_id])
    @homes = @location.homes
  end
end
