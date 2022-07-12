class ReviewsController < ApplicationController

    def index
        reviews = Review.all
        render json: reviews, status: :ok
    end

    def show
        review = review_find
        render json: review, status: :ok
    end

    def create
        review = Review.create!(review_params)
        render json: review, status: :created
    end

    def update
        review = review_find
        review.update!(review_params)
    end

    def delete
        review = review_find
        review.destroy
        head :no_content
    end

    private

    def review_params
        params.permit(:title,:detail, :score, :activity_id, :review_id)
    end

    def review_find
        Review.find_by!(id: params[:id])
    end
end
