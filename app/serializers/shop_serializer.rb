class ShopSerializer < ActiveModel::Serializer
  attributes :id, :name, :books_in_stock
  belongs_to :publisher

  def books_in_stock
    object.books.map {|book| {id: book.id, title: book.title, sales_by_each_book: book.sellings}}
  end

end