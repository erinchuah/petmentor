class Mentor < ApplicationRecord
  has_many :bookings
  has_many :mentees, through: :bookings

  def update_avg_rating
    @value = 0
    self.bookings.each do |booking|
      @value = @value + booking.rating
    end
    @total = self.bookings.size
    update_attributes(avg_rating: @value.to_f / @total.to_f)
  end

  def half_stars
    if avg_rating == nil
      return 0
    elsif avg_rating - avg_rating.to_i > 0.3
      return 1
    else
      return 0
    end
  end

  def blank_stars
    5 - half_stars - avg_rating.to_i
  end

end
