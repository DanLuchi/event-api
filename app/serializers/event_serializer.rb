class EventSerializer < ActiveModel::Serializer
  attributes :key, :text, :updated_at
end
