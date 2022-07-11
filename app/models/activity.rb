class Activity < ApplicationRecord
  belongs_to :coach
  has_many :reviews
  has_many :clients, through: :reviews
end
