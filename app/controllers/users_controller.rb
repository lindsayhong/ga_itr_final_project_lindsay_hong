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
    @holes = Hole.all
    @rounds = Round.all
    @round_users = RoundUser.all
    @total_rounds = 0
    @total_green_array = Array.new
    @total_fairway_array = Array.new
    @total_chips_array = Array.new
    @total_sand_shots_array = Array.new
    @total_putts_array = Array.new
    @total_score_array = Array.new
    @total_over_under_array = Array.new
    @total_up_and_down = Array.new
    @total_sandies = Array.new
  end
end
