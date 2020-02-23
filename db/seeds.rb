# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require 'date'

#Seed 50 mentors
50.times do
  Mentor.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    contact_method: ["WhatsApp", "WeChat", "Skype", "Messenger"].sample,
    contact_detail: Faker::Dessert.variety,
    title: Faker::Job.title,
    company: Faker::Company.name,
    field: Faker::Job.field,
    description: Faker::Lorem.paragraph,
    location: Faker::Address.country,
    linkedin: "www.linkedin.com/in/erinchuah/",
    photo: "assets/images/headshot#{rand(1..8)}.jpg",
    skills: ["product management", "management consulting", "web development", "business development", "marketing", "sales", "legal", "HR", "advertising", "growth hacking", "operations", "AI / ML"].sample(5)
    )
end

puts "#{Mentor.count} mentors have been seeded"

#Seed 10 mentees
30.times do
  Mentee.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    contact_method: ["WhatsApp", "WeChat", "Skype", "Messenger"].sample,
    contact_detail: Faker::Dessert.variety,
    interest_field: Faker::Job.field,
    experience_years: [*0..15].sample,
    description: Faker::Lorem.paragraph,
    location: Faker::Address.country,
    linkedin: Faker::Internet.url,
    photo: "https://loremflickr.com/320/240"
    )
end

puts "#{Mentee.count} mentees have been seeded"

#Seed 5 bookings
from = 15.days.ago.to_f
to = 60.days.from_now.to_f

80.times do
  Booking.create(
    date: Time.at(rand*(to-from)+from),
    duration: [15,30,45,60].sample,
    price: [20,50,75,100,150,200].sample,
    mentee_id: [*1..(Mentee.count)].sample,
    mentor_id: [*1..(Mentor.count)].sample,
    rating: [*1..5].sample,
    review: Faker::Lorem.paragraph
  )
end

puts "#{Booking.count} bookings have been seeded"

# #seed feedback
# bookfeed_id = 1
# until bookfeed_id == (Booking.count + 1)
#   Feedback.create(
#     booking_id: bookfeed_id,
#     rating: [*1..5].sample,
#     review: Faker::Lorem.paragraph
#   )
#   bookfeed_id += 1
# end

# puts "#{Feedback.count} feedback have been seeded"
