class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @review.cocktail = Cocktail.find(params[:cocktail_id])
    @review.save
    redirect_to cocktail_path(@review.cocktail)
  end

def destroy
    @review = Review.find(params[:id])
    # cocktail = @review.cocktail
    id = @review.cocktail_id
    @review.destroy
    redirect_to cocktail_path(id)
end

private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end

