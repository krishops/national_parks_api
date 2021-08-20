class Park < ApplicationRecord
  attr_accessor :id, :states_ids

  has_many :states
end