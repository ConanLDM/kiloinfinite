class EnigmaRating < ApplicationRecord
  belongs_to :enigma
  belongs_to :user

  validates :enigma, presence: true
  validates :user, presence: true
  validates :rating, presence: true
  validates :enigma_id, uniqueness: { scope: :user_id }
end
