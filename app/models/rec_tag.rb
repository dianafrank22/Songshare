class RecTag < ActiveRecord::Base
	belongs_to :recs
	belongs_to :tags

end