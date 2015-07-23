class Hotel < ActiveRecord::Base
	belongs_to :town
	has_many :rooms
	accepts_nested_attributes_for :rooms,
                                   reject_if: 
                                   proc { |attributes| attributes['type'].blank?},
                                   allow_destroy: true
end
