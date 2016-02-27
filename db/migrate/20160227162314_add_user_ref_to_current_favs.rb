class AddUserRefToCurrentFavs < ActiveRecord::Migration
  def change
    add_reference :current_favs, :user, index: true, foreign_key: true
  end
end
