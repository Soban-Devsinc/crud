class User < ApplicationRecord

  has_many :user_projects
  has_many :posts, through => :user_projects

end
