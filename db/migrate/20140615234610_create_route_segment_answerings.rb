class CreateRouteSegmentAnswerings < ActiveRecord::Migration
  def change
    create_table :route_segment_answerings do |t|
      t.integer :route_segment_id
      t.integer :answer_id
    end
  end
end
