require 'pry'
class RecsController < ApplicationController

	def index
		@recs = Rec.all
		id = Rec.select('id')
		# @TODO need to change this select('id') to be more specific? the id for each
   		rec_tag_ids = RecTag.select('tag_id').where( :rec_id => id)
    	@tag = Tag.where(:id => rec_tag_ids)
    	user_id = Rec.select('user_id').where(:id => id)
    	@user = User.where(:id => user_id)
	end

	def show
		@rec = Rec.where(id: params['id'])
	end

	def new 
		@rec = Rec.new
		# need rec params and def create? 
	end


	def create
		@rec = Rec.new(params[:rec], :user_id => session["current_user"])
    	render :show
    end

 private 

 	def rec_params
 	params.require(:rec).permit(:id, :title, :preview_url, :song_id, :uri, :image, :artist, :spotify_url, :user_id)
	end
end