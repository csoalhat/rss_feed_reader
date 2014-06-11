class Article < ActiveRecord::Base
  
  validates_uniqueness_of :title
  has_many :bookmarks
  belongs_to :feed

  attr_accessible :content, :image, :title, :user, :url, :feed, :feed_id

end
