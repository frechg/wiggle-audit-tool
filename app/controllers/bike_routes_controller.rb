class BikeRoutesController < ApplicationController
  def index
    @bike_routes = BikeRoute.all
    @block_question_total = Question.where(route_segment_type: 'Block').count
    @intersection_question_total = Question.where(route_segment_type: 'Intersection').count
  end
end
