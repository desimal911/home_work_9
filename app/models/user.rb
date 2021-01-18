class User < ApplicationRecord
  EMAIL_VALID = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  has_many :posts, dependent: :destroy
  has_many :images, as: :imageable
  has_many :memberships
  has_many :groups, through: :memberships

  scope :adults, -> { where('birthday <= ?', 18.years.ago) }

  validates :email, uniqueness: true, format: { with: EMAIL_VALID }, presence: true
  validates :password, length: { minimum: 8 }, presence: true
  validates :personal_data, uniqueness: true, presence: true


  def full_name
    "#{first_name} #{last_name}"
  end
end
