class ShopSerializer < ActiveModel::Serializer
  attributes :id, :name, :books_in_stock
  belongs_to :publisher

  def books_in_stock
    object.books.map {|book| {id: book.id, title: book.title, copies_in_stock: book.copies_in_stock}}
  end

end