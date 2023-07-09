class UsersController < ApplicationController


  def create
    @user = User.new(user_params)

  end
  def show
    @book_new = Book.new
    @user = User.find(params[:id])
    @book = Book.find(params[:id])

  end

  def edit
    @user = current_user
  end

  def index
     @users = User.all
     @user = current_user
  end

  def destroy
    book = Book.find(params[:id])
    book.desutroy
    redirect_to '/books'
  end

  private
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end
end
