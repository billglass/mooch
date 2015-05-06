class UsersController < ApplicationController
 
  def new
    @user = User.new
  end

  def create
      @user = User.new(user_params)
    if @user.save
      redirect_to @user, notice: "New User Created"
    else
      flash[:alert] = "Sorry, there has been an error"
      render :new
    end
  end

  def index
    @users = User.all
  end

  def show
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
