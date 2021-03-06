class Sale < ApplicationRecord
  validates :cod, uniqueness: true
  validates :detail, presence: true
  validates :category, inclusion: { in: %w(uno dos tres cuatro cinco)},
  message: "%{value} No es valido" }
  validates :value, numericality: { greater_than_or_equal_to: 0}
  validates :discount, numericality: { only_integer: true}
end
