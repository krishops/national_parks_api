class StatePark < ApplicationRecord
  attr_accessor :id, :name, :states_id

  belongs_to :state

  validates :name, presence: true


end