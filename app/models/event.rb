# frozen_string_literal: true

class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'

  has_many :EventAttendance
  has_many :attended_users, through: :EventAttendance , :source => 'user'
end