class Article < ActiveRecord::Base
  
  validates_uniqueness_of :title
  has_many :bookmarks
  belongs_to :feed

  attr_accessible :content, :image, :title, :user, :url, :feed, :feed_id

  def newest_articles
    articles.order('created_at DESC').limit(15)
  end

end
