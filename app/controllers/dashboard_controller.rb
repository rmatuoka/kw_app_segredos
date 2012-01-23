class DashboardController < ApplicationController
  
  def index
    @hint = Hint.first(:order => "RAND()")
  end

end
