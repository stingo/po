class AddAudioToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :audio, :string
    add_column :posts, :audiotitle, :string
    add_column :posts, :lyrics, :text
    add_column :posts, :date_released, :date
    add_column :posts, :artist, :string

    add_index :posts, :lyrics
    add_index :posts, :audiotitle
    add_index :posts, :artist
  end
end
