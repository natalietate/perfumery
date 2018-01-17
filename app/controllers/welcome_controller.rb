class WelcomeController < ApplicationController
  def index
    @perfumes = Perfume.all
    @brands = Brand.all
  end
end
