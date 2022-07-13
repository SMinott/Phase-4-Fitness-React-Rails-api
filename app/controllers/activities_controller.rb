class ActivitiesController < ApplicationController

    before_action :activity_find, except: [:index, :create]

    def index
        activities = Activity.all
        render json: activities, status: :ok
    end

    def show
        render json: activity_find, status: :ok
    end

    def create
        activity = Activity.create!(activity_params)
        render json: activity, status: :created
    end

    def update
        activity_find.update!(activity_params)
    end

    def destroy
        activity_find.destroy
        head :no_content
    end

    private

    def activity_params
        params.permit(:event, :description, :location, :image_activity, :coach_id)
    end

    def activity_find
        Activity.find_by!(id: params[:id])
    end

end
