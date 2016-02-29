class Tag < ActiveRecord::Base
	belongs_to :recs
	# belongs to or has_many?
end