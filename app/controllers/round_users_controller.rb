class RoundUsersController < ApplicationController
	before_filter :authenticate_user!
	
	def edit
    @round_user = RoundUser.find(params[:id]) #DOUBLE CHECK THIS LATER.
  end

  def update
   	@round = RoundUser.find(params[:id]).round
    @round_user = RoundUser.find(params[:id])
    @round_user.update_attributes(params[:round_user])
    redirect_to @round
  end
	# def new
	# 	@round = Round.find(params[:round_id])
	# 	@round_user = @round.round_users.build
	# end

	# def create
	# 	@round = Round.find(params[:round_id])
	# 	@round_user = @round.round_users.build(params[:round_user])
	# 	if @round_user.save
	# 		redirect_to @round
	# 	else
	# 		render action: :new
	# 	end
	# end
	def update_greens_in_regulation
		
	end

end
