class ParkingsController < ApplicationController
  def index
    @parkings = Parking.all
    # if params[:search].present?
    #   @parkings = Parking.search_by_address(params[:search])
    #   @parkings.each do |parking|
    #     parking.address
    #     parking.post_code
    #     parking.city
    #     @address_parkings << parking.address_parking

    #   end
    # elsif params[:max_price].present?
    #   @parkings = Parking.all
    #   @parkings = @parkings.where("price <= ?", params[:max_price])
    #   @parkings.each do |parking|
    #     parking.address_parking
    #     @address_parkings << parking.address_parking
    #   end
    # else
    #   @parkings = Parking.all
    #   @address_parkings = AddressParking.all
    # end

    # if @address_parkings == AddressParking.all
    #   @markers = @address_parkings.geocoded.map do |address|
    #     {
    #       lat: address.latitude,
    #       lng: address.longitude,
    #       info_window: render_to_string(partial: "info_window", locals: { address: address }),
    #       info_marker: render_to_string(partial: "info_marker", locals: { address: address })
    #     }
    #   end
    # elsif @address_parkings.length == 1
    #   @markers = [{
    #     lat: @address_parkings[0].latitude,
    #     lng: @address_parkings[0].longitude,
    #     info_window: render_to_string(partial: "info_window", locals: { address: @address_parkings[0] }),
    #     info_marker: render_to_string(partial: "info_marker", locals: { address: @address_parkings[0] })
    #   }]
    # elsif @address_parkings.is_a?(Array) && @address_parkings.length > 1
    #   @markers = []
    #   @address_parkings.each do |address_parking|
    #     marker_informations = {
    #       lat: address_parking.latitude,
    #       lng: address_parking.longitude,
    #       info_window: render_to_string(partial: "info_window", locals: { address: address_parking }),
    #       info_marker: render_to_string(partial: "info_marker", locals: { address: address_parking })
    #     }
    #     @markers << marker_informations
    #   end
    # else
    #   redirect_back(fallback_location: root_path, notice: "Addresse inconnue")
    # end
  end

  def show
    @parking = Parking.find(params[:id])
  end

  def new
    @parking = Parking.new
  end

  def create
    @parking = Parking.new(parking_params)
    @parking.user = current_user
    if @parking.save
      redirect_to parking_path(@parking)
    else
      render :new
    end

    def destroy

    end

   def update
    
   end

   def edit

   end
  end

  private

  def parking_params
    params.require(:parking).permit(:title, :price, :description, :available, :address, :post_code, :city, photos: [])
  end
end
