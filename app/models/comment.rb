class Comment < ActiveRecord::Base
  
  belongs_to :user
  belongs_to :bookmark
  
  attr_accessible :body

end
