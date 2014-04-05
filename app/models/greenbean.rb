class Greenbean < ActiveRecord::Base

	mount_uploader :image, GreenbeanUploader

	validates_presence_of :name
	validates_presence_of :starbucks
	# validates_presence_of :image

end
