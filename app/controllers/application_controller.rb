class ApplicationController < ActionController::Base
  before_filter :auth

  private
	def auth
		return if controller_name =='reports' && 
		(action_name =='new' || action_name == 'create')
		authenticate_user!
	end
  protect_from_forgery with: :exception
end
