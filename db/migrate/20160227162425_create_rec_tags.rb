class CreateRecTags < ActiveRecord::Migration
  def change
    create_table :rec_tags do |t|
    	t.references :rec, index: true, foreign_key: true
    	t.references :tag, index: true, foreign_key: true
    end
  end
end
