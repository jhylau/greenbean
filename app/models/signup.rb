class Signup < ActiveRecord::Base

  belongs_to :event
  belongs_to :lunch_group

end
