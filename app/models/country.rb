class Country < ApplicationRecord
  has_many :regions
  has_many :cities, through: :regions
  validates :name, uniqueness: true
end
