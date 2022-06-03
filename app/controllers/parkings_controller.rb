class ParkingsController < ApplicationController
  def index
    @parkings = Parking.all
    @address_parkings = AddressParking.all
    @markers = @address_parkings.geocoded.map do |address|
      {
        lat: address.latitude,
        lng: address.longitude,
        info_window: render_to_string(partial: "info_window", locals: { address: address }),
        info_marker: render_to_string(partial: "info_marker", locals: { address: address })
      }
    end
  end

  def show
    @parking = Parking.find(params[:id])
  end

  def show
    @parking = Parking.find(params[:id])
  end

  private

  def singer_params
    params.require(:parking).permit(:title, :photo, :price, :category)
  end
end
