class User < ApplicationRecord
    has_many :events
    has_many :rsvps
    has_many :sessions
    has_many :comments

    has_secure_password
end
