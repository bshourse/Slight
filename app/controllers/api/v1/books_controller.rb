class Api::V1::BooksController < ApiController

  before_action :validate_api_key
  skip_before_action :verify_authenticity_token

  def show
    @book = Book.find(params[:id])
    render json: @book
  end

  def create
    @book = Book.new(book_params_on_create)

    if @book.save
      render json: @book, status:	:created
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end


  def update
    @book = Book.find(params[:id])

    if @book.update(book_params_on_update)
      render json: @book, status: :ok
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end

  private

  def book_params_on_create
    params.require(:book).permit(:title, :publisher_id)
  end

  def book_params_on_update
    params.require(:book).permit(:title)
  end

end
