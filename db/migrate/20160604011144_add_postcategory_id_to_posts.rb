class AddPostcategoryIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :postcategory_id, :integer
  end
end
