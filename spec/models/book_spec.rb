require 'rails_helper'

describe 'Book validation', type: :model do

  it 'should require title' do
    publisher = Publisher.create(name: "Rspec Publisher")
    book = Book.create(publisher_id: 1)
    expect(book.valid?).to eq(false)
  end

  it 'should be able to save book' do
    publisher = Publisher.create(name: "Rspec Publisher")
    book = Book.create(title: "Rspec test title book", publisher_id: 1)
    expect(book.valid?).to eq(true)
  end

  it 'title length should be minimum 4' do
    publisher = Publisher.create(name: "Rspec Publisher")
    book = Book.create(title: "rsp", publisher_id: 1)
    expect(book.valid?).to eq(false)
  end

  context 'title should be uniqueness' do
    before do
      publisher = Publisher.create(name: "Rspec Publisher")
      book = Book.create(title: "Rspec test title book", publisher_id: 1)
    end
    it 'is invalid if title is not unique' do
      publisher = Publisher.create(name: "Rspec Publisher")
      book = Book.create(title: "Rspec test title book", publisher_id: 1)
      expect(book.valid?).to eq(false)
    end

    it 'is valid if title is unique' do
      publisher = Publisher.create(name: "Rspec Publisher")
      book = Book.create(title: "Rspec test title book2", publisher_id: 1)
      expect(book.valid?).to eq(true)
    end
  end
end
