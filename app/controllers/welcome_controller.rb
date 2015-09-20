class WelcomeController < ApplicationController
  def index
  	redirect_to calendar_actions_path if user_signed_in? 
  end
end
