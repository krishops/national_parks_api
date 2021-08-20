# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
class Seed

  def self.begin
    Park.destroy_all
    seed = Seed.new
    seed.generate_parks
  end

  def generate_parks
    20.times do |i|
      park1 = Park.create!(
        name: Faker::Mountain.unique.range,
        location: Faker::Address.state_abbr,
        national: true
      )
      puts "parks #{i}: Name is #{park1.name} location is #{park1.location} and national park is #{park1.national} and state park is #{park1.state}" 
    end
    20.times do|i|
      park2 = Park.create!(
        name: Faker::Mountain.unique.name,
        location: Faker::Address.state_abbr,
        state: true
      )
      puts "parks #{i}: Name is #{park2.name} location is #{park2.location} and national park is #{park2.national} and state park is #{park2.state}" 
    end
  end
end

Seed.begin