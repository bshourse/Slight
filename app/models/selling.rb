class Selling < ApplicationRecord
  belongs_to :book
  belongs_to :shop
  belongs_to :publisher
  after_update :set_copies_in_stock

  def set_copies_in_stock
    self.update_columns(copies_in_stock: self.copies - self.selled_copies)
  end

end
