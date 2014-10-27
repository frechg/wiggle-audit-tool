class QuestionsController < ApplicationController
  def index
    @block_questions = Question.where(route_segment_type: 'Block')
    @intersection_questions  = Question.where(route_segment_type: 'Intersection')
  end
end
