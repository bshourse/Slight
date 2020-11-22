require 'rails_helper'

describe 'Books API', type: :request do
  describe 'GET /books' do
    it 'should return all books' do

      get '/api/v1/books', headers: { 'x-api-key' => "Slight" }
      json = JSON.parse(response.body)

      expect(response).to have_http_status(:success)
      expect(json.keys).to match_array(["data"])
      expect(json.size).to eq(1)
    end
  end

  describe 'POST /books' do

    it 'should create a new book' do
      post '/api/v1/books', params: { book: { title: 'Rspec Book', publisher_id: 1 } }, headers: { 'x-api-key' => "Slight" }

      expect(response).to have_http_status(:created)
    end
  end

  describe 'PATCH /books/:id' do
    let!(:publisher) { FactoryBot.create(:publisher, name: 'Spec Publisher') }
    let!(:book) { FactoryBot.create(:book, title: 'Spec Testbook', publisher_id: 1) }

    it 'should update a book' do

      patch "/api/v1/books/#{book.id}", params: { book: { title: 'Rspec BookUpdate' } }, headers: { 'x-api-key' => "Slight" }

      expect(response).to have_http_status(:ok)
    end
  end
end
