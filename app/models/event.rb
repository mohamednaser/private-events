# frozen_string_literal: true

class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'

  has_many :EventAttendance
  has_many :attended_users, through: :EventAttendance , :source => 'user'

  def is_attend?
    self.EventAttendance.where(user_id: 1).exists?
  end
end