class Event < ActiveRecord::Base
  validates :name, :city, :state, presence: true, length: { minimum: 2 }
  validate :date_cannot_be_in_the_past
  def date_cannot_be_in_the_past
    if date.present? && date < Date.today
      errors.add(:date, "can't be in the past")
    end
  end


  belongs_to :user
  has_many :event_attendees, dependent: :destroy
  has_many :attendees, through: :event_attendees, source: :user
  has_many :comments
end
