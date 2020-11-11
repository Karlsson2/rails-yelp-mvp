class ReviewsController < ApplicationController


  def new
    @review = Review.new
  end

  def create
    @review = Review.new(params[:review])
    @review.save

    redirect_to restaurant_path(@review.restaurant)
  end
end
