class User < ActiveRecord::Base
	has_secure_password
	has_many :current_favs
	has_many :followers
	has_many :recs

	def self.search(search)
		where("username ILIKE ?", "%#{search}%")
		# where("email LIKE ?", "%#{search}%")
	end
end