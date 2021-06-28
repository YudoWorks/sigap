class NaturalDisastersController < ApplicationController
  before_action :authorized_admin, only:[:report_form, :report]

  def authorized_admin
    if @currentUser.isAdmin == FALSE
      redirect_to('/')
    end
  end

  def show
    @natural_disaster = NaturalDisaster.find_by(id: params[:id])
  end

  def report_form
    @natural_disaster = NaturalDisaster.new
  end

  def report
    @natural_disaster = NaturalDisaster.new(
      name: params[:name], 
      location: params[:location], 
      desc: params[:desc])
    
    if @natural_disaster.save 
      flash[:notice] = "Natural disaster successfully reported"
      redirect_to("/natural_disasters/#{@natural_disaster.id}/show")
    else
      render("natural_disasters/report_form")
    end
  end
end
