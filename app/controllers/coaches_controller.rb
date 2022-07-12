class CoachesController < ApplicationController

    def index
        coaches = Coach.all
        render json: coaches, status: :ok
    end

    def show
        coach = coach_find
        render json: coach, status: :ok
    end

    private

    def coach_find
        Coach.find_by!(id: params[:id])
    end
end
