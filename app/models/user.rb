class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  has_many :subscriptions
  has_many :feeds, through: :subscriptions

  has_many :friendships
  has_many :friends, through: :friendships

  has_many :bookmarks
  has_many :comments

  has_one :profile

  attr_accessible :first_name, :last_name

end
