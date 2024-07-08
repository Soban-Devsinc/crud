class Project < ApplicationRecord

  has_many :user_projects
  has_many :users, :through => :user_projects, dependent: :delete_all

  accepts_nested_attributes_for :user_projects

  validates :title, presence: true
  validates :description, presence: true, length: { in: 15..50 }
end
