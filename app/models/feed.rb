class Feed < ActiveRecord::Base
  
  has_many :subscriptions
  has_many :users, through: :subscriptions

  has_many :bookmarks
  has_many :articles

  has_and_belongs_to_many :categories

  attr_accessible :description, :title, :url
  
end
