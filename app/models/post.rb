class Post < ActiveRecord::Base

  belongs_to :user
  belongs_to :post

 is_impressionable



  #validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 240 } # posts are capped at 240 chars.\

  mount_uploader :postcover, PostcoverUploader

  
  has_many :likes


 




  def post_type
   if post_id?
      "repost"
    else
      "post"
    end
  end
end