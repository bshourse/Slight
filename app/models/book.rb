class Book < ApplicationRecord
  has_many :sellings
  has_many :shops, through: :sellings
  belongs_to :publisher
  validates :title,
            presence: true,
            length: { minimum: 4, maximum: 40 }
end
