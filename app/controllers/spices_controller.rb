class SpicesController < ApplicationController

    def index
        spices = Spice.all
        render json: spices
    end

    def create
        spice = Spice.create(spice_params)
        render json: spice, status: :created
    end

    def destroy
        spice = Spice.find_by(id: params[:id])
        if spice
            spice.destroy
        else
            render_not_found_response
        end
    end

    def update
        spice = Spice.find_by(id: params[:id])
        if spice
            spice.update(spice_params)
            render json: spice, status: :accepted
        else
            render_not_found_response
        end
    end

end

private

    def spice_params
        params.permit(:title, :image, :description, :notes, :rating)
    end

    def render_not_found_response
        render json: {error: "Spice not found"}, status: :not_found
    end

