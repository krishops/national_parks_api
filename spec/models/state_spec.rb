require 'rails_helper'

describe State do
  it {should have_many(:national_parks)}
  it {should have_many(:state_parks)}
  it {should belong_to(:park)}
end