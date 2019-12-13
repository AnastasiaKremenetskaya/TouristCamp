class Region < ApplicationRecord
  belongs_to :country
  validates :name, uniqueness: true
  validates :country_id, presence: true
end
