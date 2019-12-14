class City < ApplicationRecord
  belongs_to :region
  has_many :camps, :dependent => :delete_all
  validates_uniqueness_of :name, scope: :region_id
end
