class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def index
    @user = User.new
    @users = User.all
  end
  
  def edit
    @user = User.find(params[:id])
  end
end
