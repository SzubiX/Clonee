class ApplicationController < ActionController::Base
  before_filter :auth

  private
  	def after_sign_in_path_for(res)
  		reports_path
  	end
      def after_sign_out_path_for(res)
      reports_path
    end
	def auth
		return if controller_name =='reports' && 
		(action_name =='new' || action_name == 'create')
		authenticate_user!
	end
  protect_from_forgery with: :exception
end
