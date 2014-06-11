class Profile < ActiveRecord::Base
  
  belongs_to :user
  
  attr_accessible :bio, :city, :image, :user_id, :is_public
  
end
