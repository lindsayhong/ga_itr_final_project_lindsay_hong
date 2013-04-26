class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
  	@user = current_user
  end

  def edit
  	@user = User.find(current_user.id)
  end

  def update
    @user = User.find(current_user.id)
    @user.update_attributes(params[:user])
    redirect_to @user
  end

  def show
  	@user = User.find(current_user.id)
  end
end
