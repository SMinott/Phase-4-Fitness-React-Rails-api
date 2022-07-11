class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :event, :description, :location, :image_activity
  has_one :coach
end
