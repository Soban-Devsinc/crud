class User < ApplicationRecord

  has_many :user_projects
  has_many :projects, :through => :user_projects, dependent: :destroy
  has_many :post_comments, as: :commentable

  accepts_nested_attributes_for :user_projects


  validates :name, presence: true, length: { minimum: 8, maximum: 15 }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :cnic, presence: true, length: { is: 13 }, uniqueness: true

  # validates :dateofbirth, presence: true, date_not_today: true

end
