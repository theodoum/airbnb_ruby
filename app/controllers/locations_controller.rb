class LocationsController < ApplicationController
    def index
        @location = Location.search_by_rate(params[:search_by_rate])
    end
    
    def show
        @location = Location.find(params[:id])
    end
    def new
        @location = Location.new
    end

    def edit
        @location = Location.find(params[:id])
    end

    def create  
        @location = Location.new(locations_params)

        if @location.save
            redirect_to locations_path
        else 
            render :new
        end

    end

    def update
        @location = Location.find(params[:id])
        if @location.update(locations_params)
            redirect_to locations_path
        else
            render :edit
        end
    end

    def destroy 
        @location = Location.find(params[:id])
        @location.destroy
        redirect_to locations_path
    end

    private

    def locations_params
        params.require(:location).permit(:titre, :description, :nbChambre, :nbCouchage, :rue, :ville, :numRue, :lat, :long, :prix, :photos, :search_by_rate)
    end
end