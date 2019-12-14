class Region < ApplicationRecord
  belongs_to :country
  has_many :cities
  validates :name, uniqueness: true
  validates :country_id, presence: true
end
