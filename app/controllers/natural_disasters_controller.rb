class NaturalDisastersController < ApplicationController
  def show
    @natural_disaster = NaturalDisaster.find_by(id: params[:id])
  end

  def report
    @natural_disaster = NaturalDisaster.new(
      name: params[:name], 
      location: params[:location], 
      desc: params[:desc])
    
    if @natural_disaster.save 
      redirect_to("/natural_disasters/#{@natural_disaster.id}/show")
    else
      render("natural_disaster")
    end
  end
end
