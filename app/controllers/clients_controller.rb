class ClientsController < ApplicationController

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

    def client_params
        params.permit(:first_name, :last_name, :age, :image_client, :email, :member, :fee,)
    end

    def client_find
        Client.find_by!(id: param(:id))
    end
end
