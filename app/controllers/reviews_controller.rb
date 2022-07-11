class ReviewsController < ApplicationController
    

    def index
    end

    def show
    end

    def create
    end

    def update
    end

    def delete
    end

    private

    def review_params
        params.permit(:title,:detail, :score, :activity_id, :client_id)
    end

    def review_find
        Review.find_by!(id: param(:id))
    end
end
