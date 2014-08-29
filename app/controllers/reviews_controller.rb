class ReviewsController < ApplicationController
  def index
  end

  def new
    @review = Review.new
  end

  def create
    @user = current_user
    @product =
    @review = Review.create(post_params)
    redirect_to @url
  end

  def show

  end

  def edit
  end

  def update
  end

  def destroy
  end

  def post_params
    params.require(:review).permit(:rating, :content)
  end

end
