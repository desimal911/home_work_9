class Post < ApplicationRecord
  belongs_to :user
  has_many :images, as: :imageable

  def publish
    self.published_at = DateTime.now
    self.save
  end
end
