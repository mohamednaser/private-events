# Event Model
class Event < ApplicationRecord
  include SessionHelper

  validates :title, presence: true, length: { maximum: 50 }

  belongs_to :user

  scope :upcoming, -> { where('date > ?', DateTime.now.to_date) }
  scope :past, -> { where('date < ?', DateTime.now.to_date) }

  has_many :EventAttendance
  has_many :attended_users, through: :EventAttendance, source: 'user'

  def attend?(user_id)
    self.EventAttendance.where(user_id: user_id).exists?
  end
end
