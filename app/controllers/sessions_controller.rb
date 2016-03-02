class SessionsController < ApplicationController

  # def new
  # end

  def create
  	user = User.find_by_email(params[:email])
  	if user && user.authenticate(params[:password])
  		session[:user_id] = user.user_id
  		redirect_to '/recs'
  	else
  		redirect_to '/login'
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to '/l'
  end



end