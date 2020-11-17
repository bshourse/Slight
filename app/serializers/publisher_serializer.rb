class PublisherSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :shops
end
