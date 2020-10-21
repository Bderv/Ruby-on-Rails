class User < ActiveRecord::Base
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :name, :email, presence:{ message: "must be given please" }, length: { minimum: 2 }
  has_secure_password

  has_many :secrets
  has_many :likes, dependent: :destroy
  has_many :secrets_liked, through: :likes, source: :secret
end
