class RoundUsersController < ApplicationController
	before_filter :authenticate_user!
	
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
end
