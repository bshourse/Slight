class Book < ApplicationRecord
  has_many :sellings
  has_many :shops, through: :sellings
  belongs_to :publisher
  validates :title,
            presence: true,
            uniqueness: true,
            length: { minimum: 4, maximum: 40 }
  validates :publisher_id, presence: true, :on => :create
end
