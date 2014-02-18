class RoundsController < ApplicationController
  before_filter :authenticate_user!, :find_round, only: [:join, :leave, :show]

  def index
    @rounds = Round.all
  end

  def new
    @round = Round.new
  end  

  def edit
  	@round = Round.find(params[:id])
  end

  def update
    @round = Round.find(params[:id])
    @round.update_attributes(params[:round])
    redirect_to @round
  end

  def create
    @round = Round.new(params[:round])
    @round.created_by = current_user.id
  	
    if @round.save
      RoundUser.create(user: current_user, round: @round, round_handicap: current_user.handicap)
  		redirect_to @round
  	else
  		render action: :new
  	end
  end

  def join # Controller filter: find_round.
    RoundUser.create(user: current_user, round_id: @round.id, round_handicap: current_user.handicap)
    redirect_to @round
  end

  # def create_hole
  #   @hole_number = params[:hole_number]
  #   @round = Round.find(params[:id])
  #   @hole = Hole.create(hole_number: @hole_number)
  #   redirect_to edit_round_user_hole_path(@round.round_user_id, @hole.id)
  # end

  def leave # Controller filter: find_round.
    @round_user = RoundUser.where(user_id: current_user.id, round_id: params[:id]).first
    @round_user.destroy
    redirect_to current_user
  end

  def show # Controller filter: find_round.
    @current_round_user = @round.round_users.where(user_id: current_user.id, round_id: @round.id).first
    @round_users = @round.round_users
    @number = 1
    @back_nine_number = 10
    @green_array = Array.new
    @fairway_array = Array.new
    @chips_array = Array.new
    @sand_array = Array.new
    @putts_array = Array.new
    @score_array = Array.new
    @over_under_array = Array.new
    @up_and_down = Array.new
    @sandies = Array.new
  end

  private

  # Controller filter.
  def find_round
    @round = Round.find(params[:id])
  end
end
