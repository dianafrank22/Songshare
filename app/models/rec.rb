class Rec < ActiveRecord::Base
	has_many :tags, through: :current_favs
	belongs_to :users
end