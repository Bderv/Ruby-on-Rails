class User < ActiveRecord::Base
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :first_name, :last_name, :email, :city, :state, presence:{ message: "must be given please" }, length: { minimum: 2 }
  has_secure_password

  has_many :events
  has_many :event_attendees, dependent: :destroy 
  has_many :events_attending, through: :event_attendees, source: :event
  has_many :comments
end
