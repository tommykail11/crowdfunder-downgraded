class User < ActiveRecord::Base
  authenticates_with_sorcery!
  
  has_many :projects

  validates :username, :presence => true
  validates :email,    :presence => true
  validates :password, :presence => true, :on => :create
end
