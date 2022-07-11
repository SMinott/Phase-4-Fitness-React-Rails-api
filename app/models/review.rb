class Review < ApplicationRecord
  belongs_to :activity
  belongs_to :client
end
