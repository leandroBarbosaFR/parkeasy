class ParkingsController < ApplicationController
  def index
    @parkings = Parking.all
  end

  def show
    @parking = Parking.find(params[:id])
  end

  private

  def singer_params
    params.require(:parking).permit(:title, :photo, :price, :category)
  end
end
