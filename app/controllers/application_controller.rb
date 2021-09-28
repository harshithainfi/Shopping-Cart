class ApplicationController < ActionController::Base
	def selected_user
	  @selected_user ||= session[:selected_user_id] && User.find_by_id(session[:selected_user_id])
	end

end
