class Mentee < ApplicationRecord
  has_many :bookings
  has_many :mentors, through: :bookings
end
