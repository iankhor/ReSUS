class HomeController < ApplicationController
  
  # anyone can visit the the Home/Root page
  # skip_before_action :authenticate_user!

  def index
  end
end
