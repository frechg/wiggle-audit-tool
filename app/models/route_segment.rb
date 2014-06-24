class RouteSegment < ActiveRecord::Base
  has_many :answerings, class_name: 'RouteSegmentAnswering', dependent: :destroy
  has_many :answers, through: :route_segment_answerings
  belongs_to :bike_route

  def questions
    Question.where(route_segment_type: type)
  end

  def complete?
    questions.all? { |question| answering_by_question_id(question.id) }
  end

  def answering_by_question_id(question_id)
    answerings.joins(:answer).readonly(false).find_by(answers: { question_id: question_id })
  end

  def answer_for(question)
    answers.where(question_id: question)
  end

  def total_score
    answers.sum(:score)
  end
end
