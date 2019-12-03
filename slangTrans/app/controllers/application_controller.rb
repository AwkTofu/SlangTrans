class ApplicationController < ActionController::Base
	def signin

	end

	def require_login
    	return head(:forbidden) unless session.include? :user_id
  	end
end
