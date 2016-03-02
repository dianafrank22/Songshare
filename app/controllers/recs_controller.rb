require 'pry'
class RecsController < ApplicationController
# forces user to log in before seeing this
before_filter :authorize

	def index
		# @TODO show recs of only users you follow using join table
		@recs = Rec.all
		id = Rec.select('id')
		# @TODO need to change this select('id') to be more specific? the id for each
   		rec_tag_ids = RecTag.select('tag_id').where( :rec_id => id)
    	@tag = Tag.where(:id => rec_tag_ids)
    	# user_id = Rec.select('user_id').where(:id => id)
    	@user = User.where(:id => user_id)
	end

	def show
		@id = params['id'].to_i
		@rec = Rec.where(:id => @id)
		# is it not selecting the right id?
		# binding.pry
	end

	def new 
		@rec = Rec.new
		# need rec params and def create? 
	end


	def create
		# binding.pry
		@rec = Rec.create(:title => params[:title], :preview_url => params[:preview_url],
			:song_id => params[:song_id], :uri => params[:uri], :image => params[:image],
			:artist => params[:artist], :spotify_url => params[:spotify_url], :user_id => session["current_user"])
    	# render :show
    	# if @rec.save
	    # 	  redirect_to show_item_path(:id => rec.id)	  	
    	# else
    	# 	render :index
    	# end
    end




 private 

 	def rec_params
 	params.require(:rec).permit(:id, :title, :preview_url, :song_id, :uri, :image, :artist, :spotify_url, :user_id)
	end
end