class FollowersController < ApplicationController
before_filter :authorize

	def new 
		follow = Follower.new
	end

	def create
		binding.pry
		@follow = Follower.create(user_id: @current_user.id, following_id: params[:id])
		binding.pry	
		respond_to do |format|
    	format.html
    	format.json  { render :json => @follow}
  		end
	end


	# def destroy
	# 	unfollow = Follower.where(following_id: (params[:id]), user_id: @current_user)

	# end


end