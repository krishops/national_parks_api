require 'rails_helper'

describe Park do
  it {should have_many(:states)}
end