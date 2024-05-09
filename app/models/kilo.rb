class Kilo < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 2, maximum: 50 }

  def to_s
    title
  end
end
