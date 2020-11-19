class Api::V1::BooksController < ApiController

  before_action :validate_api_key
  skip_before_action :verify_authenticity_token

  def show
    @book = Book.find(params[:id])
    render json: @book
  end

  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    render json: @book
  end

  private

  def book_params
    params.require(:book).permit(:title)
  end

end