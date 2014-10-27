class QuestionsController < ApplicationController
  def index
    @block_questions = Question.where(route_segment_type: 'Block')
    @intersection_questions  = Question.where(route_segment_type: 'Intersection')
  end

  def show
    @question = Question.find(params[:id])
    @answers = @question.answers.sort_by { |a| a.score }
    @bike_routes = BikeRoute.all
  end
end
