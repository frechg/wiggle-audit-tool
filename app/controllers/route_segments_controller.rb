class RouteSegmentsController < ApplicationController
  def index
    @route_segments = route_segments
  end

  def show
    @route_segment = route_segment
    @questions = @route_segment.questions.includes(:answers)
  end

  def update
    @route_segment = route_segment
    params[:whatever][:answerings].each do |question_id, attrs|
      answering = @route_segment.answerings.find_or_initialize_by(question_id: question_id)
      answering.answer_id = attrs[:answer_id]
      answering.save!
    end
  end

  private

  def bike_route
    BikeRoute.find(params[:bike_route_id])
  end

  def route_segments
    bike_route.route_segments
  end

  def route_segment
    route_segments.find(params[:id])
  end
end
