class BikeRoute < ActiveRecord::Base
  has_many :route_segments, dependent: :destroy

  def block_count
    blocks.count
  end

  def intersection_count
    intersections.count
  end

  def completed_blocks?
    blocks.select(&:complete?).length
  end

  def completed_intersections?
    intersections.select(&:complete?).length
  end

  private

  def blocks
    RouteSegment.where(bike_route_id: self.id, type: "Block")
  end

  def intersections
    RouteSegment.where(bike_route_id: self.id, type: "Intersection")
  end
end
