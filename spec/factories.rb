FactoryBot.define do
  factory(:park) do
    name {Faker::Mountain.range}
    location {Faker::Address.state_abbr}
    national {true}
  end
end