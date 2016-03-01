require 'pry'
class UsersController < ApplicationController
	before_action :set_user

	def index 
		if (session[:current_user] == true)
			puts("logged in already")
			@current_user = User.find(session['current_user']['id'])
			redirect_to "/recs"
		else 
			binding.pry
			render :index

		end	
	end

	def login
		user = User.find_by(email: params['email'])
			if user && user.authenticate(params['password'])
				@current_user = user 
				session[:current_user] = user
				redirect_to '/recs'
			else 
				@error = "Incorrect email or password. Please try again."
				render :index
			end
		end

	def logout 
		session[:current_user] == false
		@current_user = session[:current_user]
		puts ("logged out")
		redirect_to "/" 
	end

	def new 
		@user = User.new	
	end



	def create
		binding.pry
		@top_5 = params[:top_5].split(",")

		@user = User.create(
			:email => params[:email],
			:username => params[:username],
			:image => params[:image],
			:password => params[:password],
			:top_5 => @top_5
		  )
		binding.pry
	
		# respond_to do |format|
  #   	format.html
  #   	format.json  { render :json => @user}
  #   	binding.pry
    		# @user.save
  		# end
  		# redirect_to '/recs'
	end



	def show 
		@user = User.where(id: params['id'])
		render :show
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