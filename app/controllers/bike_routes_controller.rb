class BikeRoutesController < ApplicationController
  def index
    @bike_routes = BikeRoute.all
  end
end
