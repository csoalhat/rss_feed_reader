class Category < ActiveRecord::Base
  
  has_and_belongs_to_many :feeds

  attr_accessible :name
  
end
