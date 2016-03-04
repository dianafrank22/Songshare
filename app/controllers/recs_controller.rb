require 'pry'
class RecsController < ApplicationController
# forces user to log in before seeing this
before_filter :authorize

	def index
		following_ids = current_user.followers.pluck(:following_id)
		@recs = Rec.includes(:user, :tags).where(user_id: [following_ids])



		#@TODO why does this not work vvvv showing all of the users/tags not each one?
		# id = Rec.select('id')
  #  		rec_tag_ids = RecTag.select('tag_id').where( :rec_id => id)
  #   	@tag = Tag.where(:id => rec_tag_ids)
  #   	user_id = Rec.select('user_id').where(:id => id)
  #   	@user = User.where(:id => user_id)
    	# binding.pry
	end

	def show
		@id = params['id'].to_i
		@rec = Rec.where(:id => @id)
	end

	def new 
		@rec = Rec.new

	end


	def create
		# binding.pry
		@rec = Rec.create(:title => params[:title], :preview_url => params[:preview_url],
			:song_id => params[:song_id], :uri => params[:uri], :image => params[:image],
			:artist => params[:artist], :spotify_url => params[:spotify_url], :user_id => @current_user.id)

		# binding.pry
    end




 private 

 	def rec_params
 	params.require(:rec).permit(:id, :title, :preview_url, :song_id, :uri, :image, :artist, :spotify_url, :user_id)
	end
end