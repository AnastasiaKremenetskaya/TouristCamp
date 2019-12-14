class Region < ApplicationRecord
  belongs_to :country
  has_many :cities, :dependent => :delete_all
  has_many :camps, through: :cities
  validates_uniqueness_of :name, scope: :country_id
  validates :country_id, presence: true
end
