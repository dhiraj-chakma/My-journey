class Post < ActiveRecord::Base
  belongs_to :user

  # TODO: Add some validation
  validates :url, presence: true, format: { with: /\Ahttp:\/\/.+\z/i }

  validates :title, presence: true, uniqueness: true

  validates :title, uniqueness: { case_sensitive: false }, length: { minimum: 5 }

  validates :user, presence: true
end
