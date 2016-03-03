class CurrentFav < ActiveRecord::Base
	belongs_to :user 
	# is it belongs to or has many, because multiple users can have the same fav

end