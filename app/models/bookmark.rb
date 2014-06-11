class Bookmark < ActiveRecord::Base

  belongs_to :user
  belongs_to :article
  
  has_many :comments

  attr_accessible :thought, :title, :user_id, :article, :article_id
  
end
