class Profile < ActiveRecord::Base
  
  belongs_to :user
  
  attr_accessible :bio, :city, :image, :user_id
  
end
