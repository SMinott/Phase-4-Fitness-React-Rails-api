class Client < ApplicationRecord
    has_many :reviews
    has_many :activities, through: :reviews
end
