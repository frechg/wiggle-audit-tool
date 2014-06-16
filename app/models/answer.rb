class Answer < ActiveRecord::Base
  belongs_to :question
  has_many :route_segment_answerings, dependent: :destroy
end
