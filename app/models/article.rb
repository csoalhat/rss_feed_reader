class Article < ActiveRecord::Base
  
  has_many :bookmarks
  belongs_to :feed

  attr_accessible :content, :image, :title, :user, :url, :feed, :feed_id

  validates_uniqueness_of :title

end
