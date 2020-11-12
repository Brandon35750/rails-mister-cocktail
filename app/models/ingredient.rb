class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocktails, through: :doses
  validates_uniqueness_of :name
  validates :name, presence: true
end
