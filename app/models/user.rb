# frozen_string_literal: true

# Class for user
class User < ApplicationRecord
  has_many :events_created, class_name: 'Event'

  has_many :eventattendanced, class_name: 'EventAttendance'
  has_many :attendedevent, through: :eventattendance
end
