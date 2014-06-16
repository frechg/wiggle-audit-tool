class BikeRoute < ActiveRecord::Base
  has_many :route_segments, dependent: :destroy
end
