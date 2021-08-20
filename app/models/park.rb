class Park < ApplicationRecord
  validates :name, presence: true
  validates :location, presence: true
  validates :national, presence: true
  validates :state, presence: true
end