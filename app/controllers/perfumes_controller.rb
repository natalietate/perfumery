class PerfumesController < ApplicationController
  def index
    @perfumes = Perfume.all
  end

  def new
    @perfume = Perfume.new
  end

  def show
    @perfume = Perfume.find_by_id(params[:id])
  end

  def create
    @perfume = Perfume.new(perfume_params)
    if @perfume.save
      redirect_to @perfume
    else
      render 'new'
    end
  end

  private

  def perfume_params
    params.require(:perfume).permit(:perfume_name, :size, :rating, :description, :season, :brand_id)
  end


end
