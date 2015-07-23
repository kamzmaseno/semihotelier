class HotelsController < ApplicationController
  def index
  	@hotel = Hotel.all
  	@town = Town.all
  end

  def show
  end
end
