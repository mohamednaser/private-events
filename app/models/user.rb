# frozen_string_literal: true

# Class for user
class User < ApplicationRecord
  has_many :created_events, class_name: 'Event'

  has_many :eventattendanced, class_name: 'EventAttendance'
  has_many :attendedevent, through: :eventattendanced , :source => 'event'
end
