class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.text :text
      t.string :title
      t.string :theme

      t.timestamps
    end
  end
end
