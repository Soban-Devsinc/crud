class Project < ApplicationRecord

  has_many :user_projects
  has_many :users, :through => :user_projects, dependent: :destroy
  has_many :post_comments, as: :commentable


  accepts_nested_attributes_for :user_projects

  validates :title, presence: true, uniqueness: true
  validates :description, presence: true, length: { in: 15..50 }

end
