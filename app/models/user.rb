class User < ActiveRecord::Base
  has_many :articles

  before_save { self.email = email.downcase }

  validates :username, presence: true, length: { minimum: 3, maximum: 10 },
    uniqueness: { case_sensitivity: false }

  VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 100 },
    uniqueness: { case_sensitivity: false },
    format: { with: VALID_EMAIL_REGEX }
end
