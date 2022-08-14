class BooksController < ApplicationController
  def index
    @book = Book.new
    @books = Book.all
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to book_path(@book)
    else
      render index
    end
  end

  def show
  end

  def edit
  end

  private

  def book_params #ストロングパラメータ
    params.require(:book).permit(:title, :body) #パラメーターのキー
  end

end
