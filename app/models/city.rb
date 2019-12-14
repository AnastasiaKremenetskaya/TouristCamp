class City < ApplicationRecord
  belongs_to :region
  has_many :camps
  validates_uniqueness_of :name, scope: :region_id
end
