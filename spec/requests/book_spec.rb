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
    let!(:publisher) { FactoryBot.create(:publisher, name: 'Spec Publisher') }

    it 'should create a new book' do
      expect {
        post '/api/v1/books', params: { book: { title: 'Rspec Book', publisher_id: 1 } }, headers: { 'x-api-key' => "Slight" }
      }.to change { Book.count }.from(0).to(1)

      expect(response).to have_http_status(:created)
    end

    it 'the book should not be create because of the missing parameter: publisher_id' do
      post '/api/v1/books', params: { book: { title: 'Rspec Book' } }, headers: { 'x-api-key' => "Slight" }

      expect(response).to have_http_status(:unprocessable_entity)
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

  describe 'DELETE /books/:id' do
    let!(:publisher) { FactoryBot.create(:publisher, name: 'Spec Publisher') }
    let!(:book) { FactoryBot.create(:book, title: 'Spec Testbook', publisher_id: 1) }

    it 'should delete a book' do
      expect {
        delete "/api/v1/books/#{book.id}", headers: { 'x-api-key' => "Slight" }
      }.to change { Book.count }.from(1).to(0)

      expect(response).to have_http_status(:no_content)
    end
   end
end
