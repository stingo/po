class Post < ActiveRecord::Base

 is_impressionable



  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 240 } # posts are capped at 240 chars.\

  mount_uploader :postcover, PostcoverUploader

  belongs_to :user
  has_many :likes
end
