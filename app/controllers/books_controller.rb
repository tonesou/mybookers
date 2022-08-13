class BooksController < ApplicationController
  def index
    @book = Book.new
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
