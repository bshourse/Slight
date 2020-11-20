class Publisher < ApplicationRecord
  has_many :books
  has_many :shops, -> { order('books_sold_count DESC') }
  has_many :sellings
  validates :name,
            presence: true,
            length: { minimum: 4, maximum: 40 }
end
