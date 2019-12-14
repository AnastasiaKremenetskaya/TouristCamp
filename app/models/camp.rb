class Camp < ApplicationRecord
  belongs_to :city
  validates_uniqueness_of :name, scope: :city_id
end
