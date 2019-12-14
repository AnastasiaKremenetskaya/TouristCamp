class Country < ApplicationRecord
  has_many :regions
  has_many :cities, through: :regions
  has_many :camps,  through: :regions
  validates :name, uniqueness: true
end
