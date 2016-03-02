require 'pry'
class UsersController < ApplicationController
	before_action :set_user

	def index 
		# if (session[:current_user] == true)
		# 	puts("logged in already")
		# 	@current_user = User.find(session['current_user']['id'])
		# 	redirect_to "/recs"
		# else 
		# 	# binding.pry
		# 	render :index

		# end	
	end

	

	def new 
		@user = User.new	
	end



	def create
		# binding.pry
		@top_5 = params[:top_5].split(",")

		@user = User.create(
			:email => params[:email],
			:username => params[:username],
			:image => params[:image],
			:password => params[:password],
			:top_5 => @top_5
		  )
		if @user.save
			session[:user_id] = user.id
			redirect_to '/recs'
		else
			render :new
		end
	end



	def show 
		@user = User.where(id: params['id'])
		@id = params['id'].to_i
		# binding.pry
		@current_favs = CurrentFav.where(user_id: params['id'])
		render :show
		# binding.pry
	end


	def follow
		follow = Follower.create(user_id: @current_user, following_id: params[:id])
	end

	def unfollow
		follow = Follower.find_by(following_id: params[:id], user_id: @current_user)
	end

private
# # Use callbacks to share common setup or constraints between actions.
def set_user
  @user = User.where(email: params['email'])
end

# Never trust parameters from the scary internet, only allow the white list through.
def user_params
  params.require(:user).permit(:id, :email, :password_digest, :username, :image, :top_5)
end



end