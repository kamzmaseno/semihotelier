class HotelsController < ApplicationController
  def index
  	@hotel = Hotel.all
  	@town = Town.all
  	@room = Room.all
  end

  def show
  end
end
