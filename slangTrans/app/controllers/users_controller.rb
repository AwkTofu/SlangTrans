class UsersController < ApplicationController

	def index
		#Main Menu login/search/list to find words
		#This is used to keep track of which page u goto after logging in
		session[:before_login_url] = request.original_url
		#byebug
	end

	def new
		@user = User.new
  	end

  	#data gather from creating the form
  	def create
  		

  		#White listing the params and making the user
  		wl = params[:user].permit(:name, :username, :password)
  		user = User.new(wl) 

  		if user.valid?
  			user.save
  			flash[:notice] = "You have succesfully created your account."
  			redirect_to login_path
  		else
  			flash[:notice] = user.errors.messages
  			redirect_to new_user_path
  		end
  	end
end
