require 'rails_helper'

RSpec.describe Book, type: :model do
  context  "validations tests" do
    it "should require title" do
      book = Book.create(title: "Test title", )
    end
  end
end
