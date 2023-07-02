class BooksController < ApplicationController
  def new
    
  end

  def index
     @books = Book.all
     @book = Book.new
  end

  def show
  end
end
