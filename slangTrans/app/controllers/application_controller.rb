class ApplicationController < ActionController::Base
  
	def require_login
		return head(:forbidden) unless session.include? :user_id
	end
end
