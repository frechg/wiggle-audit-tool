class CreateRouteSegments < ActiveRecord::Migration
  def change
    create_table :route_segments do |t|
      t.string :type
      t.integer :sort_order
      t.integer :bike_route_id
    end
  end
end
