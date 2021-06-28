class VolunteersController < ApplicationController
    before_action :authorized, only: [:join]

    def join
        @volunteer = Volunteer.new(
            userId: params[:userId],
            naturalDisasterId: params[:naturalDisasterId],
            jobId: params[:jobId])
        
        @volunteer.save
        flash[:notice] = "Successfully Volunteer"
        redirect_to("/natural_disasters/#{params[:naturalDisasterId]}/show")
    end
end
