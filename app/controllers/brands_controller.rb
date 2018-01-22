class BrandsController < ApplicationController

  def index
    @brands = Brands.all
  end

  def new
    @brand = Brand.new
  end

  def show
    @brand = Brand.find_by_id(params[:id])
    @perfume = Perfume.find_by_id(params[:id])
  end

  def create
    @brand = Brand.new(brand_params)
    if @brand.save
      redirect_to @brand
    else
      render 'new'
    end
  end

  private

  def brand_params
    params.require(:brand).permit(:name)
  end

end
