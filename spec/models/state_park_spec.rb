require 'rails_helper'

describe StatePark do
  it {should belong_to(:states)}

  it {should validate_presence_of :name}
end