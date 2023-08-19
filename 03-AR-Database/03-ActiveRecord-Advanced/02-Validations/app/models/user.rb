class User < ActiveRecord::Base
  has_many :posts

  # TODO: Add some validation
  # A user should have a username
  validates :username, presence: true, uniqueness: true

  # A user should have a valid email
  validates :email, presence: true, format: {
    with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  }
  # TODO: Add some callbacks
  before_validation :strip_email
  after_create :send_welcome_email

  def strip_email
    self.email = email.strip unless email.nil?
  end

  def send_welcome_email
    FakeMailer.instance.mail(email, "Welcome #{username}")
  end
end
