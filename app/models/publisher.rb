class Publisher < ApplicationRecord
  has_many :books
  has_many :shops
  has_many :sellings
end
