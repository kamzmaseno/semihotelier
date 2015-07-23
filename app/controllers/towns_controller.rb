class TownsController < ApplicationController
  def index
  	@town=Town.all
   end

  def show
  end
end
