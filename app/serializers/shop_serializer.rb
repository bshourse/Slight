class ShopSerializer < ActiveModel::Serializer
  attributes :id, :name
  belongs_to :publisher
  has_many :books
end
