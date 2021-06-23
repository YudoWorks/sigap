class HomeController < ApplicationController
  def index
    @naturalDisasters = NaturalDisaster.all
    render('home/index')
  end
end
