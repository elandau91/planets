class MissionsController < ApplicationController
    def create
        @mission = Mission.create(mission_params)

        redirect_to scientist_path(@mission.scientist)
    end

    private
    
    def mission_params
        params.require(:mission).permit(:name, :planet_id, :scientist_id)
    end
end
