class Publisher < ApplicationRecord
  has_many :books
  has_many :shops, -> { order('books_sold_count DESC') }
  has_many :sellings
end
