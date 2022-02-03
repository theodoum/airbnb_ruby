class LocationsController < ApplicationController
    def index
        @location = Location.all
    end
    
    def show
        @location = Location.find(params[:id])
    end
    def new
        @location = Location.new
    end

    def create
        @location = Location.new(locations_params)

        if @location.save
            redirect_to locations_path
        else 
            render :new
        end

    end


    private

    def locations_params
        params.require(:location).permit(:titre, :description)
    end
end