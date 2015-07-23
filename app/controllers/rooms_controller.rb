class RoomsController < ApplicationController
  def index
  	@room = Room.all  	
  end

  def show
  	@room = Room.find_by_id(params: id)
  end
end
