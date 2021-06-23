class NaturalDisastersController < ApplicationController
  def show
    @natural_disaster = NaturalDisaster.find_by(id: params[:id])
  end
end
