class CreateFollowers < ActiveRecord::Migration
  def change
    create_table :followers do |t|
      t.string :following_id
    end
  end
end
