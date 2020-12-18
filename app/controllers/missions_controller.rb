class MissionsController < ApplicationController
    def index
        @missions = Mission.all
    end

    def new
        @mission = Mission.new
    end

    def create
        @mission = Mission.create(mission_params)
        if @mission.valid?
        redirect_to scientist_path(@mission.scientist.id)
        else 
            flash[:error] = @mission.errors.full_messages
            redirect_to new_missions_path
        end

    end

    private

    def mission_params
        params.require(:mission).permit(:name, :scientist_id, :planet_id)
    
    end


end
