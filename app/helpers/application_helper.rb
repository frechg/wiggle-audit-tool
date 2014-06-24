module ApplicationHelper
  def route_segment_path(bike_route, route_segment)
    if route_segment.complete?
      bike_route_route_segment_path(bike_route, route_segment)
    else
      edit_bike_route_route_segment_path(bike_route, route_segment)
    end
  end
end
