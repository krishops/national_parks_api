class Park < ApplicationRecord
  validates :name, presence: true
  validates :location, presence: true
end