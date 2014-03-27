class CreateLunchGroups < ActiveRecord::Migration
  def change
    create_table :lunch_groups do |t|
    	t.integer :event_id
    	t.integer :restaurant_id
    end
  end
end
