require 'pry'
class UsersController < ApplicationController
	before_action :set_user

	
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
		@top_5 = User.select('top_5').where(id: params['id'])
		@top = @top_5[0].top_5
		@new = @top.split(',')
		@current_favs = CurrentFav.where(user_id: params['id'])
		render :show
	end


	def edit
	@user = User.find(params[:id])
	end 



	def update 
	@user = Cheese.find(params[:id])
	@user.update(user_params)
	if @user.save
		render :show
	else
		render :edit
	end
	
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