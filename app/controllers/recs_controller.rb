require 'pry'
class RecsController < ApplicationController

	def index
		@recs = Rec.all
   		rec_tag_ids = RecTag.select('tag_id').where( rec_id: params['id'])
    	@tag = Tag.where(:id => rec_tag_ids)
    	user_id = Rec.select('user_id').where(id: params['id'])
    	@user = User.where(:id => user_id)
	end

	def new 
		# need search query and ajax call 
	end


end