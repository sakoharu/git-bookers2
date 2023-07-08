class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    about_path
    @user = User.new(user_parameter)
    if @user.save
      flash[:notice]= "Signed in successfully."
      redirect_to book_path(user.id)
    else
     render after_sign_in_path_for(resource)
     about_path
    end

  end

  def after_sign_out_path_for(resource)
    root_path
  end


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
  end

end


