class Postcomment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  validates :body, presence: true
end
