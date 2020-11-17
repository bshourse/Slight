class PublisherSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :shops
  has_many :books
end
