class Post < ActiveRecord::Base

  self.per_page = 15

  

 is_impressionable



  #validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 240 } # posts are capped at 240 chars.\

  mount_uploader :postcover, PostcoverUploader

  belongs_to :user
  belongs_to :post

  has_many :likes, dependent: :destroy

  has_many :postcomments, dependent: :destroy


 




  def post_type
   if post_id?
      "repost"
    else
      "post"
    end
  end
end