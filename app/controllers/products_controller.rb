class ProductsController < ApplicationController
  def index
    @product = Product.all
  end

  def new

  end

  def create
  end

  def show
    @product = Product.friendly.find(params[:id])
    @category = Category.friendly.find(params[:category_id])
    @review = Review.new
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
