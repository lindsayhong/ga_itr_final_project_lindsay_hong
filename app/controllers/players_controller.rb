class PlayersController < ApplicationController
  before_filter :authenticate_user!

  def index
  	@players = Player.all
  end

  def edit
  	# @player = Player.find(current_user.id)
  end

  def update
    @player = Player.find(current_user.id)
    @user.update_attributes(params[:user])
    redirect_to @user
  end

  def show
  	@user = User.find(current_user.id)
    @holes = Hole.all
    @rounds = Round.all
    @round_users = RoundUser.all
    @total_rounds = 0
    @overall_score = Array.new
    @overall_green_array = Array.new
    @overall_fairway_array = Array.new
    @overall_chips_array = Array.new
    @overall_sand_shots_array = Array.new
    @overall_putts_array = Array.new
    @overall_score_array = Array.new
    @overall_over_under_array = Array.new
    @overall_up_and_down = Array.new
    @overall_sandies = Array.new
  end

end