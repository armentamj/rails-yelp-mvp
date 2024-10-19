class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    @review.save
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else render "restaurants/new", status: :unprocessable_entity
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
