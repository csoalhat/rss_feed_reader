class Article < ActiveRecord::Base
  
  has_many :bookmarks
  belongs_to :feed

  attr_accessible :content, :image, :title, :user

end
