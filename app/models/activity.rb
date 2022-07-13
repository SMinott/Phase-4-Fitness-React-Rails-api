class Activity < ApplicationRecord
  belongs_to :coach
  has_many :reviews
  has_many :clients, through: :reviews

  def avg_score
    reviews.average(:score).round(2).to_f
  end
end
