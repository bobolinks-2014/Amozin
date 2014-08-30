class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      session[:cart_id] = @user.cart.id
      redirect_to categories_url, :notice => "Logged in!"
    else

      flash[:error] = "Invalid email or password"
      redirect_to categories_url
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to categories_url, :notice => "Logged out!"
  end

end
