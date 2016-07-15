class CreatePostcategories < ActiveRecord::Migration
  def change
    create_table :postcategories do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end


