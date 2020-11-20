class Shop < ApplicationRecord
  has_many :sellings
  has_many :books, through: :sellings
  belongs_to :publisher
  after_save :set_books_sold_count

  def set_books_sold_count
    self.update_columns(books_sold_count: Selling.where(:shop_id => $shop).sum(:selled_copies))
  end

end
