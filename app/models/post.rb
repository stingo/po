class Post < ActiveRecord::Base

  self.per_page = 8

  belongs_to :user
  belongs_to :post
  belongs_to :postcategory

  has_many :likes, dependent: :destroy

  has_many :postcomments, dependent: :destroy

 is_impressionable

validates :content, presence: true,length: { maximum: 240 }, unless: ->(post){post.postcover.present?}
validates :postcover, presence: true, unless: ->(post){post.content.present?}

  #validates :user_id, presence: true
  #validates :content, presence: true, length: { maximum: 240 } || :postcover, presence: true # posts are capped at 240 chars.\

  mount_uploader :postcover, PostcoverUploader
  mount_uploader :sound, SoundUploader

  after_commit :remove_postcover!, on: :destroy
  #after_commit :delete_empty_dirs!, on: :destroy





   #def delete_empty_dirs
    #path = File.expand_path(store_dir, root)
    #Dir.rmdir(path)
  #rescue
    #true
  #end
 




  def post_type
   if post_id?
      "repost"
    else
      "post"
    end
  end
end