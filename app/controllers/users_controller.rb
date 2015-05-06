class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
     if @user.save 
      redirect_to @user, notice:"You have successfully signed up!"
    else
      flash[:alert]="Sorry there has been an error"
      render :new
     end 

  end

  def index
    "this is awesome!!!"
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
end
