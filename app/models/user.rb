class User < ApplicationRecord

  has_many :user_projects
  has_many :projects, :through => :user_projects, dependent: :destroy

  accepts_nested_attributes_for :user_projects
end
