class HomeController < ApplicationController
  def index
    @natural_disasters = NaturalDisaster.all
    render('home/index')
  end
end
