class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :post_id
      t.integer :user_id
      t.text :text
      t.integer :rate

      t.timestamps
    end
  end
end
