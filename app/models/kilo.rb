class Kilo < ApplicationRecord
  validates :weight, presence: true, numericality: { greater_than: 0 }
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 2, maximum: 50 }

  def to_s
    title
  end
end
