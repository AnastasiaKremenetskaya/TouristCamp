class Camp < ApplicationRecord
  belongs_to :city
  validates :name, uniqueness: true
end
