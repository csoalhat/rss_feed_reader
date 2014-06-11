class Feed < ActiveRecord::Base
  
  has_many :subscriptions
  has_many :users, through: :subscriptions

  has_many :bookmarks
  
  has_many :articles

  has_and_belongs_to_many :categories

  attr_accessible :description, :title, :url, :category_id

  validates_uniqueness_of :url

  def latest_articles
    articles.order('created_at DESC').limit(10)
  end
  
end
