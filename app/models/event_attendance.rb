class EventAttendance < ApplicationRecord
  scope :upcoming, -> { where('event.date > ?', DateTime.now.to_date) }
  scope :past, -> { where('event.date < ?', DateTime.now.to_date) }

  belongs_to :user, class_name: 'User'
  belongs_to :event, class_name: 'Event'
end
