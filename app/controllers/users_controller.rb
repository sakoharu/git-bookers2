class UsersController < ApplicationController


  def create
    @user = User.new(user_params)
  end


  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to user_path
  end
  
  def show
    @book_new = Book.new
    @user = User.find(params[:id])
    @books = @user.books

  end

  def edit
    @user = User.find(params[:id])
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
    params.require(:user).permit(:name, :introduction, :profile_image, :user)
  end
end
