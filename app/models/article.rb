class Article < ActiveRecord::Base
  
  has_many :bookmarks
  belongs_to :feed

  attr_accessible :content, :image, :title, :user, :url, :feed, :feed_id

<<<<<<< HEAD
  def newest_articles
    articles.order('created_at DESC').limit(15)
  end
=======
  validates_uniqueness_of :title
>>>>>>> eafed3aa1e8fe2f8ac23e4579651dc4a306b8415

end
