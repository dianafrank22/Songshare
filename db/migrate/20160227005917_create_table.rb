class CreateTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :username
      t.string :password_digest
      t.string :image
      t.text :top_5, default: []
    end
  end
end
