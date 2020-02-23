class Booking < ApplicationRecord
  belongs_to :mentee
  belongs_to :mentor

  after_create :update_mentor_rating

  def update_mentor_rating
    mentor.update_avg_rating
  end

  def blank_stars
    5 - rating
  end

end
