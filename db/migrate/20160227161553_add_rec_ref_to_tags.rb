class AddRecRefToTags < ActiveRecord::Migration
  def change
    add_reference :tags, :rec, index: true, foreign_key: true
  end
end
