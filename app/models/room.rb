class Room < ActiveRecord::Base
	self.inheritance_column=nil
	belongs_to :hotel
	has_many :reviews

	
end
