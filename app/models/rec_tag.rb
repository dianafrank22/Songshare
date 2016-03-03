class RecTag < ActiveRecord::Base
	belongs_to :rec
	belongs_to :tag

end