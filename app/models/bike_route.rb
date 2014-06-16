class BikeRoute < ActiveRecord::Base
  has_many :route_segments, dependent: :destroy

  def block_count
    RouteSegment.where(bike_route_id: self.id, type: "Block").count
  end

  def intersection_count
    RouteSegment.where(bike_route_id: self.id, type: "Intersection").count
  end
end
