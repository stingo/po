class AddPostcategoryNameToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :postcategory_name, :string
  end
 
end
