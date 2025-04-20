class Event < ApplicationRecord
    belongs_to :user
    belongs_to :venue, optional: true
  
    has_many :tasks
    has_many :comments
    has_many :rsvps
end
