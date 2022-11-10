class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

    def show
      @flat = Flat.find(params[:id])
    end

    def new
      @flat = Flat.new
    end

  def create
    Flat.create!(flat_create_params)
    redirect_to flats_path
  end

  def edit
    @flat = Flat.find(params[:id])
  end

  def update
    @flat = Flat.find(params[:id])
    Flat.update(flat_create_params)
    redirect_to flat_path(@flat)
  end

  def destroy
    @flat = Flat.find(params[:id])
    @flat.destroy
  end

  private

  def flat_create_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end
end
