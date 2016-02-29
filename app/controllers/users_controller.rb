class UsersController < ApplicationController
	# before_action :set_user

	def index 
		if session[:current_user]
			redirect_to "/recs"
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
			end
		end

	def logout 
		session.clear
		redirect_to "/" 
	end

	def new 
		@user = User.new	
	end

	def create
		@user = User.new(params[:user])
		if @user.save
			render :show
		else
			render :new
		end
		# need to fix so that it updates properly
	end



	def show 
		@user = User.where(id: params['id'])
		render :show
	end

private
# # Use callbacks to share common setup or constraints between actions.
# def set_user
#   @user = User.where(email: params['email'])
# end

# Never trust parameters from the scary internet, only allow the white list through.
def user_params
  params.require(:user).permit(:id, :email, :password_digest, :username, :image, :top_5)
end



end