class Country < ApplicationRecord
  has_many :regions, :dependent => :delete_all
  has_many :cities, through: :regions
  has_many :camps,  through: :regions
  validates :name, uniqueness: true
end
