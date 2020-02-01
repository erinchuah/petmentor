# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require 'date'

10.times do
  Mentor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, title: Faker::Job.title, company: Faker::Company.name, field: Faker::Job.field, description: Faker::Lorem.paragraph, location: Faker::Address.country, linkedin: Faker::Internet.url)
end

Mentor.all.each do |mentor|
  contact_method = ["WhatsApp", "WeChat", "Skype", "Messenger"].sample
  contact_detail = Faker::Dessert.variety
  photo = "http://loremflickr.com/320/240"
end

puts "#{Mentor.count} mentors have been seeded"




#   # every band has the same video link for now... unless we have time to seed more variety
#   new_band = Band.new(name: bandname, photo: photoURL, location: city, price: randomcost, description: lorem, link: randomlinks, user: user, style: randomstyle, tag_list: randomtag1)
#   new_band.tag_list.add(randomtag2)
#   new_band.save
#   if new_band.id%2 == 0
#     new_band.tag_list.add(randomtag3)
#     new_band.save
#   end
# end

# 20.times do
#   Booking.create(user_id: User.all.sample.id, band_id: Band.all.sample.id, date: Date.today)
# end

# p "#{User.count} users have been seeded to database"
# p "#{Band.count} bands have been seeded to database"
# p "#{Booking.count} bookings have been seeded to database"
