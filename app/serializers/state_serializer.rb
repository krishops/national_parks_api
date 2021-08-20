class StateSerializer
  include JSONAPI::Serializer
  attributes :code
  belongs_to :all
  has_many :national_parks
  has_many :state_parks
end
