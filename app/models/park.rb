class Park < ApplicationRecord
  validates :name, presence: true
  validates :location, presence: true

  paginates_per 20

  scope :location, -> (location) { where("location ilike ?", "%#{location}%")}

  scope :state, -> { where(state: true)}

  scope :national, -> { where(national: true)}
end