class UsersController < ApplicationController

	def index
		#Main Menu login/search/list to find words
		#byebug
	end

	def new
		@user = User.new
  	end

  	#data gather from creating the form
  	def create
  		#If password field isn't filledout, give error, and redirect
  		if params[:user][:password] == ""
  			flash[:notice] = "Password field cannot be empty"
  			redirect_to new_user_path
  		end

  		#White listing the params and making the user
  		wl = params[:user].permit(:name, :username, :password)
  		user = User.new(wl) 

  		if user.valid?

  		else
  			flash[:notice] = "Some Field was not filled out"
  		end
  		byebug#
  	end
end
