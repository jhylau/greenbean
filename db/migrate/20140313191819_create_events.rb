class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
    	t.date :event_date
    end
  end
end
