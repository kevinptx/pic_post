class UsersController < ApplicationController

	before_action :redirect_if_not_logged_in, only: [:index]

	def index
		@user = User.find(session[:user_id])
	end

	def show
		@user = User.find(user_params)
	end

	def new
	end

	def create

    	user = User.create(user_params)

    	if !user.valid?
      		flash[:error] = user.errors.full_messages[0]

      		redirect_to signup_path
   		else
      		session[:user_id] = user.id
      		redirect_to users_path
    	end

  	end

  	private

  	def user_params
    	params.require(:user).permit(:username, :password, :password_confirmation)
  	end

end
