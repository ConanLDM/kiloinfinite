class Kilo < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10, maximum: 50 }
end
