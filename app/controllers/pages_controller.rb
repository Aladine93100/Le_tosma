class PagesController < ApplicationController
  def home
  	if current_user
  		redirect_to matos_path
  	end
  end
end
