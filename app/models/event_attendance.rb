class EventAttendance < ApplicationRecord
    has_many :attendee, through: :events, source: :attendee

end
