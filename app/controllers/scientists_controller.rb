class ScientistsController < ApplicationController
    before_action :find_scientist, only: [:show, :update, :destroy, :edit]
    
    def index
        @scientists = Scientist.all
    end

    def show
    end

    def new
        @scientist = Scientist.new
    end

    def edit 
    end

    def create
        @scientist = Scientist.create(scientist_params)
        
        redirect_to scientist_path(@scientist)
    end

    def update
        @scientist.update(scientist_params)
        
        redirect_to scientist_path(@scientist)
    end

    def destroy
        @scientist.destroy

        redirect_to scientists_path
    end

    def new_mission
        @mission = Mission.new
        @scientists = Scientist.all
        @planets = Planet.all
    end

    def create_mission
        @scientist.mission.build(planet: @planet)

        redirect_to scientist_path(@scientist)
    end
    
    private

    def find_scientist
        @scientist = Scientist.find(params[:id]) 
    end

    def scientist_params
        params.require(:scientist).permit(:name, :field_of_study)
    end
end
