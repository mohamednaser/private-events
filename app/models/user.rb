# frozen_string_literal: true

# Class for user
class User < ApplicationRecord
  has_many :events

  has_many :attended_event, through: :events
end
