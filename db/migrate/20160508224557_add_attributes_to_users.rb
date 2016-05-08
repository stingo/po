class AddAttributesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :displayname, :string
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :city, :string
    add_column :users, :country, :string
    add_column :users, :bio, :string
    add_column :users, :userphoto, :string
    add_column :users, :usercover, :string

  end
end
