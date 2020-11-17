class Book < ApplicationRecord
  has_many :sellings
  has_many :shops, through: :sellings
  belongs_to :publisher
end
