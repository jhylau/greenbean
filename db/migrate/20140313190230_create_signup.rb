class CreateSignup < ActiveRecord::Migration
  def change
    create_table :signups do |t|
    	t.string :email
    	t.string :cuisine
    	t.string :friend_email
    	t.string :enemy_email
    	t.date :event_date
    end
  end
end
