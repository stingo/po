class Post < ActiveRecord::Base

	is_impressionable
	
  belongs_to :user

  mount_uploader :postcover, PostcoverUploader
end
