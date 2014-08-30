class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(form_params)
    if @user.save
      session[:user_id] = @user.id
      cart = Cart.create(user_id: @user.id)
      session[:cart_id] = cart.id
      redirect_to root_url, :notice => "Signed up!"
    else
      render "new"
    end
  end

  private
  def form_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
