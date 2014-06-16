class AddTitleToRouteSegments < ActiveRecord::Migration
  def change
    add_column :route_segments, :title, :string
  end
end
