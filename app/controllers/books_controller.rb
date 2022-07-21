class BooksController < ApplicationController


def new
  @book=Book.new
end4
def create
  @book=BOok.create()
def last_book
  @book=Book.last
end
  def delete
      if @book.present?
    @book.delete
  else
    puts "kmkkkkkkkkk"

  end
end

end
