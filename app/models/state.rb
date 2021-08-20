class State < ApplicationRecord
  attr_accessor :id, :code, :national_parks_ids, :state_parks_ids

  belongs_to :park
  has_many :national_parks
  has_many :state_parks

  validates :code, presence: true
end