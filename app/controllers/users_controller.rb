class UsersController < ApplicationController




  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.save
    flash[:notice] = "You have updated user successfully."
    redirect_to user_path(@user.id)
    end
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


  private
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end
end
