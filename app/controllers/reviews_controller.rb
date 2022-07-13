class ReviewsController < ApplicationController
    before_action :review_find, except: [:index, :create]

    def index
        reviews = Review.all
        render json: reviews, status: :ok
    end

    def show
        render json: review_find, status: :ok
    end

    def create
        review = Review.create!(review_params)
        render json: review, status: :created
    end

    def update
        review_find.update!(review_params)
    end

    def destroy
        review_find.destroy
        head :no_content
    end

    private

    def review_params
        params.permit(:title,:detail, :score, :activity_id, :client_id)
    end

    def review_find
        Review.find_by!(id: params[:id])
    end
end
