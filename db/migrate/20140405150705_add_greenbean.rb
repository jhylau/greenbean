class AddGreenbean < ActiveRecord::Migration
  def change
  	create_table :greenbeans do |t|
  		t.string :name
  		t.boolean :starbucks
  		t.string :image
  	end
  end
end
