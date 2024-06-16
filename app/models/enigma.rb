class Enigma < ApplicationRecord
  validates :paradox, presence: true, uniqueness: true
  validates :body, length: { minimum: 20 }, presence: true

  has_many :enigma_ratings

  def average_rating
    enigma_ratings.average(:rating).to_f # to_f added to avoid integer division
  end
end
