class User < ApplicationRecord
  EMAIL_VALID = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  has_many :posts
  has_many :images, as: :imageable

  validates :email, :uniqueness => true, format: { with: EMAIL_VALID }

  def full_name
    "#{first_name} #{last_name}"
  end
end
