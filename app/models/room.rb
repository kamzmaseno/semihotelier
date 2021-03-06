class Room < ActiveRecord::Base
	self.inheritance_column=nil
	belongs_to :hotel

    accepts_nested_attributes_for :hotel,
                                   reject_if: 
                                   proc { |attributes| attributes['name'].blank?},
                                   allow_destroy: true
     scope :townhotelrooms, -> (id){
    	joins(:hotel).where('hotel_id == ?', id).group("type")
    }      
    scope :cheapestsingnai, -> (roomtype){ where('type == ?', roomtype).minimum('price').to_s
    }                      
end

