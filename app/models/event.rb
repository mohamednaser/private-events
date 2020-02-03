# frozen_string_literal: true

class Event < ApplicationRecord
  belongs_to :user

  scope :upcoming, -> { where("date > ?" , DateTime.now.to_date)}
  scope :past, -> { where("date < ?" , DateTime.now.to_date)}

  # Ex:- scope :active, -> {where(:active => true)}

  has_many :EventAttendance
  has_many :attended_users, through: :EventAttendance , :source => 'user'

  def is_attend?
    self.EventAttendance.where(user_id: 1).exists?
  end
end