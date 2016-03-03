class User < ActiveRecord::Base
	has_secure_password
	has_many :current_favs
	has_many :followers
	has_many :recs
end