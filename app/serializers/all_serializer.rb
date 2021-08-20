class AllSerializer
  include JSONAPI::Serializer

  has_many :states
end
