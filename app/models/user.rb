# Class for user
class User < ApplicationRecord
  has_many :created_events, class_name: 'Event'

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX }

  validates :name, presence: true, length: { maximum: 50 }

  has_many :eventattendanced, class_name: 'EventAttendance'
  has_many :attendedevent, through: :eventattendanced, source: 'event'
end
