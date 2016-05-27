class CreatePostcomments < ActiveRecord::Migration
  def change
    create_table :postcomments do |t|
      t.integer :post_id
      t.text :body
      t.references :user, index: true, foreign_key: true
     

      t.timestamps null: false
    end
    add_index :postcomments, :post_id
  end
end
