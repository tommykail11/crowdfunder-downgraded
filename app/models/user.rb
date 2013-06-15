class User < ActiveRecord::Base
  authenticates_with_sorcery!
  
  has_many :projects
  has_many :pledges

  validates :username, :presence => true
  validates :email,    :presence => true
  validates :password, :presence => true, :on => :create

  def name
    "#{username}"
  end
end
