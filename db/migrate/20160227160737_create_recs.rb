class CreateRecs < ActiveRecord::Migration
  def change
    create_table :recs do |t|
      t.string :preview_url
      t.string :song_id
      t.string :title
      t.string :uri
      t.string :image
      t.string :artist
      t.string :spotify_url
    end
  end
end
