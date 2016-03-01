class TagsController < ApplicationController


# need a search query for username, tags, song_name, artist 
	def new 
		@tag = Tag.new
	end

	def create 
		tag = Tag.create(
			:rec_id => params['rec.id'],
			:tag => params["tag"]
			)
		binding.pry
		redirect_to '/recs'
	end


# @TODO need to change rec_id params to update the DB properly, right now its not working, updating as nil, have tried
# hidden values in the form params['id'], params[:id] def rec_params, doesn't know where to reference recs


# private 
# 	def tag_params
# 		params.require(:tag).permit(:id, :rec_id, :tag)
# 	end
	
# 	def rec_params
#       		params.require(:rec).permit(:id, :title, :uri, :artist)
#   	end


end