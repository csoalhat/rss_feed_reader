class Subscription < ActiveRecord::Base
  
  belongs_to :feed
  belongs_to :user
  attr_accessible :feed, :feed_id, :user, :user_id
end
