class ClientsController < ApplicationController

    before_action :client_find, except: [:index, :create]

    def index
        clients = Client.all
        render json: clients, status: :ok
    end

    def show
        render json: client, status: :ok
    end

    def create
        client = Client.create!(client_params)
        render json: client, status: :created
    end

    def update
        client.update!(client_params)
    end

    def delete
        client.destroy
        head :no_content
    end

    private

    def client_params
        params.permit(:first_name, :last_name, :age, :image_client, :email, :member, :fee,)
    end

    def client_find
        Client.find_by!(id: params[:id])
    end
end
