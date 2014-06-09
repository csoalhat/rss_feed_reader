class User < ActiveRecord::Base
  
  has_many :subscriptions
  has_many :feeds, through: :subscriptions

  has_many :friendships
  has_many :friends, through: :friendships

  has_many :bookmarks
  has_many :comments

  has_one :profile

  attr_accessible :first_name, :last_name
  
end
