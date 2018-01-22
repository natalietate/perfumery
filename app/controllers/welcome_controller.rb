class WelcomeController < ApplicationController
  def index
    @perfumes = Perfume.all
    @brands = Brand.all
    @brand = Brand.find_by_id(params[:id])
    @perfume = Perfume.find_by_id(params[:id])

  end
end
