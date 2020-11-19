class SellingSerializer < ActiveModel::Serializer
  attributes :id, :publisher_id, :shop_id, :book_id, :copies, :selled_copies, :copies_in_stock
end
