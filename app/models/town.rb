class Town < ActiveRecord::Base
	has_many :hotels
	accepts_nested_attributes_for :hotels,
                                   reject_if: 
                                   proc { |attributes| attributes['name'].blank?},
                                   allow_destroy: true

                                  
end