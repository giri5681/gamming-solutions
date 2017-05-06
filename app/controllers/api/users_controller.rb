class Api::UsersController < ApplicationController

	def create 
		@user = User.new(user_params)
		respond_to do |format|
			if @user.save 
				format.json {render json: @user}
		    else
		    	format.json {render json: @user.errors}
		 end
	  end
	end
	private
	def user_params
		params.require(:user).permit!
	end
end
