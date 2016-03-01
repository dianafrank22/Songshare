class Tag < ActiveRecord::Base
	belongs_to :recs
	has_many :rec_tags
end