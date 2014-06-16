class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :route_segment_type
      t.string :title
    end
  end
end
