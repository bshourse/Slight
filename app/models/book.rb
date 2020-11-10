class Book < ApplicationRecord
  belongs_to :publisher
  belongs_to :shop
end
