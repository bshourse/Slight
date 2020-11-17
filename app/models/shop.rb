class Shop < ApplicationRecord
  has_many :sellings
  has_many :books, through: :sellings
  belongs_to :publisher
end
