class StateParkSerializer
  include JSONAPI::Serializer
  attributes :name
  belongs_to :states
end
