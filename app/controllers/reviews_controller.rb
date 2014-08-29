class ReviewsController < ApplicationController
  def index
  end

  def new
    @review = Review.new
  end

  def create
    # @review = Review.friendly.find(params[:id])
    @category = Category.friendly.find(params[:category_id])
    @product = Product.friendly.find(params[:product_id])

    # params = review, category, product
    @review = Review.create({
      user: current_user,
      product: @product,
      rating: params[:review][:rating],
      content: params[:review][:content]
      })
    # @review = Review.friendly.find(params[:id])
    # @review.update(post_params)
    # @review.save
    # @product = Product.friendly.find(params[:id])
    # @category = Category.friendly.find(params[:id])
    # @user = current_user
    # @review = Review.create({
    #   :rating = params[:rating],
    #   :content = params[:content],
    #   :user = @user,
    #   :product = @product})
    redirect_to category_product_path(@category, @product)
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
