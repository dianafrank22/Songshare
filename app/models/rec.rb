class Rec < ActiveRecord::Base
	has_many :rec_tags
	has_many :tags, through: :rec_tags
	belongs_to :user
end