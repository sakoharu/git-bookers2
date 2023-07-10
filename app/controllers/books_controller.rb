class BooksController < ApplicationController

  def edit
     @book = Book.find(params[:id])
  end

  def update

    book = Book.find(params[:id])
    book.update(book_params)
    if book.save
      flash[:notice] = "You have updated book successfully."
      redirect_to book_path
    else
      render :show
    end
  end

  def index
    @books = Book.all
    @book = Book.new

  end

  def create
    @books = Book.all
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
    flash[:notice] = "You have created book successfully."
      redirect_to book_path(@book.id)
    else
      render :index
    end
  end

  def show
    @book_new = Book.new
    @book = Book.find(params[:id])
    @user = @book.user
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to '/books'
  end



  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end

