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
end
