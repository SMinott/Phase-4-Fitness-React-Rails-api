class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :detail, :score
  has_one :activity
  has_one :client
end
