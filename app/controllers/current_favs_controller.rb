class CurrentFavsController < ApplicationController
	before_filter :authorize

	def new 
		@users_favs = CurrentFav.where(:user_id => @current_user.id)
		# binding.pry
		@current_fav = CurrentFav.new

		# binding.pry
		# need rec params and def create? 
	end


	def create
		@current_fav = CurrentFav.create(:title => params[:title], :preview_url => params[:preview_url],
			:song_id => params[:song_id], :uri => params[:uri], :image => params[:image],
			:artist => params[:artist], :spotify_url => params[:spotify_url], :user_id => @current_user.id)
    	redirect_to '/current_favs/new'
    end

    def destroy
    	@current_fav = CurrentFav.find(params[:id])
    	@current_fav.destroy

    	redirect_to '/current_favs/new'

    
    end

    def show 
    	@users_favs = CurrentFav.where(:user_id => @current_user.id)
    end



private
def current_fav_params
 	params.require(:current_fav).permit(:id, :title, :preview_url, :song_id, :uri, :image, :artist, :spotify_url, :user_id)
	end

end