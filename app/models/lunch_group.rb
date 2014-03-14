class LunchGroup < ActiveRecord::Base
  has_many :sign_ups
  belongs_to :event
end
