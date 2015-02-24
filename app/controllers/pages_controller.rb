class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:dashboard]
  def home
  	if current_user
  		redirect_to materiel_path
  	end
  end

  def dashboard
  	@materiels = current_user.materiels
  end
end
