class Enigma < ApplicationRecord
  validates :paradox, presence: true, uniqueness: true
  validates :body, presence: true
end
