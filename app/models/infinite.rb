class Infinite < ApplicationRecord
  include PgSearch::Model
  multisearchable against: [:price]
  visitable :ahoy_visit

  validates :name, presence: true
  validates :count, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :price, numericality: { greater_than_or_equal_to: 0.0 }
  validates :description, presence: true
  has_one_attached :image

  scope :available, -> { where('count > 0') }
  scope :expensive, -> { where('price > 100') }
end
