class Country < ApplicationRecord
  has_many :regions
  validates :name, uniqueness: true
end
