class BikeRoutesController < ApplicationController
  def index
    @bike_routes = BikeRoute.all
    @block_question_total = Question.where(route_segment_type: 'Block').count
    @intersection_question_total = Question.where(route_segment_type: 'Intersection').count
  end

  def show
    @bike_route = BikeRoute.find(params[:id])
    @blocks = @bike_route.blocks
    @intersections = @bike_route.intersections
  end
end
