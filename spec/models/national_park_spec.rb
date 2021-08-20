require 'rails_helper'

describe NationalPark do
  it {should belong_to(:states)}

  it {should validate_presence_of :name}
end