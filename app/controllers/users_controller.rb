class UsersController < ApplicationController
  before_action :redirect_if_not_logged_in, only: [:index]
  before_action :define_current_user, only: [:edit, :destroy]
  before_action :define_current_session, only: [:index, :show]

  def index
  end

  def show
  end

  def new
    @user = User.new
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

  def edit
  end

  def update
    @user = User.update(user_params)
    redirect_to users_path
  end

  def destroy
    @user.destroy
    redirect_to pictures_path
  end

  private

  def define_current_user
    if (params[:id])
      @user = User.find(params[:id])
    else
      @user = User.new
    end
  end

  def define_current_session
    @user = User.find(session[:user_id])
  end

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
