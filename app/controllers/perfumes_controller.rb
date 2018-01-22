class PerfumesController < ApplicationController
  def index
    @perfumes = Perfume.all
  end

  def new
    @perfume = Perfume.new
  end

  def show
    @perfume = Perfume.find_by_id(params[:id])
    get_brand
  end

  def create
    get_brand
    @perfume = @brand.perfumes.new(perfume_params)
    @perfume.rating = 0
    @perfume.brand_id = @brand.id
     if @perfume.save
      redirect_to @brand
    else
      render 'new'
    end
  end

  private

  def get_brand
    @brand = Brand.find(params[:brand_id])
  end
  
  def perfume_params
    params.require(:perfume).permit(:name, :size, :rating, :description, :season, :brand_id)
  end


end
