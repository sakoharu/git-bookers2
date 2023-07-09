class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @book = Book.find(params[:id])


  end

  def edit
    @user = current_user
  end

  def index
     @book = Book.new
     @users = User.all
     @user = current_user
  end

  def destroy
    book = Book.find(params[:id])
    book.desutroy
    redirect_to '/books'
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
