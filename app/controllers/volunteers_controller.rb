class VolunteersController < ApplicationController
    def join
        @volunteer = Volunteer.new(
            userId: params[:userId],
            naturalDisasterId: params[:naturalDisasterId],
            jobId: params[:jobId])
        
        @volunteer.save
    end
end