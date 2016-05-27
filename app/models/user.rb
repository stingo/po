class User < ActiveRecord::Base

	validates_presence_of :displayname

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


         mount_uploader :userphoto, UserphotoUploader
         mount_uploader :usercover, UsercoverUploader

         extend FriendlyId
         friendly_id :displayname


#Posts likes

         has_many :posts, dependent: :destroy # remove a user's posts if his account is deleted.
         has_many :likes, dependent: :destroy
         has_many :postcomments, dependent: :destroy


         def likes?(post)
         post.likes.where(user_id: id).any?
         end
end
