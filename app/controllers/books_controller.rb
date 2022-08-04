class BooksController < ApplicationController
  def index
    @book=Book.all
  end

  def show
    @book=Book.find[params[:id]]
  end

  def create
    @book=Book.create(book_params)
    if book.save


  end

  def new
    @book=Book.new
  end

  def update
  end
end
