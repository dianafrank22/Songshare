class SessionsController < ApplicationController

  # def new
  # end

  def create
  	user = User.find_by_email(params[:email])
  	if user && user.authenticate(params[:password])
  		session[:user_id] = user.id
      @current_user = session[:user_id]
      # binding.pry
  		redirect_to '/recs'
  	else
  		redirect_to '/login'
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to '/'
  end



end