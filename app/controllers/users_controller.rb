class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @book = Book.find(params[:id])


  end

  def edit
  end

  def index
     @book = Book.new
     @users = User.all
     @user = current_user
  end



end