class City < ApplicationRecord
  belongs_to :region
  validates :name, uniqueness: true
end
