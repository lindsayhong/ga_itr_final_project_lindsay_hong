class RoundsController < ApplicationController
  before_filter :authenticate_user!, :find_round, only: [:join, :leave, :show]

  def index
  	@rounds = Round.all
  end

  def new
  	@round = Round.new
  end

  def create
    @round = Round.new(params[:round])
  	
    if @round.save || @round.play_date != nil
      RoundUser.create(user: current_user, round: @round, round_handicap: current_user.handicap)
  		redirect_to @round
  	else
  		render action: :new
  	end
  end

  def join
    # @round = Round.find(params[:id])
    RoundUser.create(user: current_user, round_id: @round.id)
    redirect_to @round
  end

  def leave
    # @round = Round.find(params[:id])
    @round_user = RoundUser.where(user_id: current_user.id, round_id: params[:id]).first
    @round_user.destroy
    redirect_to @round
  end

  def show
    @round_users = @round.round_users
    @number = 1
    @back_nine_number = 10
    @green_array = Array.new
    @fairway_array = Array.new
    @chips_array = Array.new
    @putts_array = Array.new
    @score_array = Array.new
    @over_under_array = Array.new
    @up_and_down = Array.new
    @score_summary_array = Array.new
    @determine_up_down
  end

  private

  # Controller filter.
  def find_round
    @round = Round.find(params[:id])
  end
end
