class RouteSegmentAnswering < ActiveRecord::Base
  belongs_to :route_segment
  belongs_to :answer
end
