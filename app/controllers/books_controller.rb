class BooksController < ApplicationController
  def new
    @books_image =Book.new
  end
end
