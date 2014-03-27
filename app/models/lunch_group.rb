class LunchGroup < ActiveRecord::Base
  has_many :signups
  belongs_to :event

  def restaurant
  	Restaurant.find(restaurant_id)
  end	
end
