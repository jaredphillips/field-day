class UsersController < ApplicationController
  before_filter :load_user, except: [:new, :create]

  def new
    @user = User.new
  end

  def show
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      flash[:success] = "Field Day Terrariums Welcomes You!"
      redirect_to @user
    else
      render "new"
    end
  end

  def update
  end

  def destroy
  end

  def edit
  end

  def update
  end

  def destroy
    sign_out
    redirect_to root_url
  end

  private
  # Commented out for now cause no new signup for site is required but maybe in the future
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def load_user
    @user = User.find(params[:id])
  end
end
