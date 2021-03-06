class UsersController < ApplicationController
  
  def index
    @users = User.where(activated: true)
  end
  def new
    @user = User.new
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def create
    @user = User.new(user_params) # Not the final implementation!
    if @user.save
      flash[:success] = "Welcome to Private Bookings!"
      log_in(@user)
      redirect_to root_url
      # Handle a successful save.
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
