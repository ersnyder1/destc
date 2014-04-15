class CitypicksController < ApplicationController

  def citypick 
    @city = User.all
  end

end