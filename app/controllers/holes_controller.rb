class HolesController < ApplicationController
  before_filter :authenticate_user!

  def new
    @round = Round.find(params[:round_id])
  	@hole = Hole.new
    @hole_number = params[:hole_number]
    @yes_no_na_options = ["Yes", "No", "N/A"]
    @green_options = ["Yes", "No"]
    @score_options = (0..15).to_a
    @chip_putt_options = (0..5).to_a
    @over_under_options = (-3..5).to_a
  end

  def edit
    @round = Round.find(params[:round_id])
    @hole = Hole.find(params[:id])
    @yes_no_na_options = ["Yes", "No", "N/A"]
    @green_options = ["Yes", "No"]
    @score_options = (0..15).to_a
    @chip_putt_options = (0..5).to_a
    @over_under_options = (-3..5).to_a
  end

  def update
    @round = Round.find(params[:round_id])
    @hole = Hole.find(params[:id])
    @hole.update_attributes(params[:hole])
    redirect_to @round
  end

  def create
    @round = Round.find(params[:round_id])
    @hole_number = params[:hole_number]
    @yes_no_na_options = ["Yes", "No", "N/A"]
    @green_options = ["Yes", "No"]
    @score_options = (0..15).to_a
    @chip_putt_options = (0..5).to_a
    @over_under_options = (-3..5).to_a
    @round_user = RoundUser.where(round_id: @round.id, user_id: current_user.id).first # RoundUser object ties together.
    @hole = @round_user.holes.build(params[:hole]) #build hole object based on what user typed in.

    @hole.round_user = @round_user # assign association for hole to the rounduser.

    if @hole.save
  		redirect_to @round
  	else
  		render action: :new
  	end
  end

  def show
    @round = Round.find(params[:round_id])
    @hole = Hole.find(params[:id])
  end
end
