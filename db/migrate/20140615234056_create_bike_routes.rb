class CreateBikeRoutes < ActiveRecord::Migration
  def change
    create_table :bike_routes do |t|
      t.string :name
    end
  end
end
