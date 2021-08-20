# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
class Seed

  def self.begin
    seed = Seed.new
    seed.generate_parks
  end

  def generate_parks
    1.times do |i|
      park = Park.create!(list: "All")
        20.times do |i|
          state = State.create!(code: Faker::Address.unique.state_abbr, park_id: park.id)
          4.times do |i|
            NationalPark.create!(name: Faker::Hipster.sentence(word_count: 2), state_id: state.id)
            StatePark.create!(name: Faker::Hipster.sentence(word_count: 2), state_id: state.id)
          end
        end
      end
    end
  end


Seed.begin