class RouteSegmentsController < ApplicationController
  def index
    @route_segments = route_segments.sort_by(&:sort_order)
    @bike_route = bike_route
  end

  def edit
    @route_segment = route_segment
    @questions = @route_segment.questions.includes(:answers)
    @bike_route = bike_route
  end

  def show
    @route_segment = route_segment
    @bike_route = bike_route
  end

  def update
    @route_segment = route_segment

    if @route_segment.questions.length == params[:answerings].length
      params[:answerings].each do |question_id, attrs|
        answering = @route_segment.answering_by_question_id(question_id) ||
          @route_segment.answerings.build
        answering.answer_id = attrs[:answer_id]
        answering.save!
      end

      redirect_to bike_route_route_segment_path(bike_route, @route_segment)
    else
      redirect_to edit_bike_route_route_segment_path(bike_route, route_segment)
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
