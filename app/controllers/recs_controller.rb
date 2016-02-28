class RecsController < ApplicationController

	def index
		@recs = Rec.all
		# user where id = user_id
		#tags where rec_id = id
	end

end