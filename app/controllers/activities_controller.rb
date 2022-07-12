class ActivitiesController < ApplicationController

    def index
        activities = Activity.all
        render json: activities, status: :ok
    end

    def show
        activity = activity_find
        render json: activity, status: :ok
    end

    private

    def activity_find
        Activity.find_by!(id: params[:id])
    end

end
