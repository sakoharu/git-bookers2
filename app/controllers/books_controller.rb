class BooksController < ApplicationController
  def new
    
  end

  def index
     @books = Book.all
     @user = current_user
     
  end

  def show
  end
end
