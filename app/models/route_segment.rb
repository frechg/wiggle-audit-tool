class RouteSegment < ActiveRecord::Base
  delegate :questions, to: :class

  def self.questions
    Question.where(route_segment_type: name)
  end

  has_many :route_segment_answerings, dependent: :destroy
  has_many :answers, through: :route_segment_answerings
  belongs_to :bike_route

  def answer_for(question)
    answers.where(question_id: question)
  end

  def total_score
    answers.sum(:score)
  end
end
