class ParkSerializer
  include JSONAPI::Serializer

  has_many :states
end
