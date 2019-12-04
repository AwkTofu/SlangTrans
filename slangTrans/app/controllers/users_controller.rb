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
  		byebug#
  	end
end
