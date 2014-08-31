class ReviewsController < ApplicationController
  respond_to :html, :json
  def index
  end

  def new
    @review = Review.new
  end

  def create
    # @review = Review.friendly.find(params[:id])
    if request.xhr?
        # binding.pry
        @product = Product.friendly.find(params[:product_id])
        @review = Review.create({
        user: current_user,
        product: @product,
        rating: params[:review][:rating],
        content: params[:review][:content]
        })

        stars = "<i class='fa fa-star'></i>" * @product.average_review
        new_data = {rating: @review.rating, content: @review.content, average: stars}
        respond_to do |format|
          format.json {render json: new_data.to_json}
        end
    else
      @category = Category.friendly.find(params[:category_id])
      @product = Product.friendly.find(params[:product_id])

      # params = review, category, product
      @review = Review.create({
        user: current_user,
        product: @product,
        rating: params[:review][:rating],
        content: params[:review][:content]
        })

      redirect_to category_product_path(@category, @product)
    end
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
