class Food < ApplicationRecord
  belongs_to :user

  validates :name, presence: true, length: { minimum: 3 }
  validates :measurementUnit, presence: true
  validates :price, numericality: { greater_than: 0, less_than: 1000000 }
end