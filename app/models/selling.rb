class Selling < ApplicationRecord
  belongs_to :book
  belongs_to :shop
  belongs_to :publisher
  after_update :set_copies_in_stock
  validates :copies, numericality: { only_integer: true, greater_than_or_equal_to: 0, greater_than_or_equal_to: :selled_copies }
  validates :selled_copies, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def set_copies_in_stock
    self.update_columns(copies_in_stock: self.copies - self.selled_copies)
  end

end
