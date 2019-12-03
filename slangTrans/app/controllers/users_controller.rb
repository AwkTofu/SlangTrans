class UsersController < ApplicationController

	def index
		#Main Menu login/search/list to find words
		#byebug
	end

	def new
  	end

	def create
	    return redirect_to(controller: 'users',
		                       action: 'login') if !params[:username] || params[:username].empty?

	    #TODO Validation
	    session[:user] = User.find_by(username: params[:username].downcase, password: params[:password])
	    if session[:user]
	    	redirect_to main_menu_path
	    else
	    	flash[:loginerror] = "Username and password does not match or doesn't exist."
	    	redirect_to login_path
	    end
	end

	def destroy
	    session.delete :user
		redirect_to main_menu_path
	end
end
