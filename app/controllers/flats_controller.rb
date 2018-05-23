class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :edit, :update, :destroy]
  def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
    @url = "https://maps.googleapis.com/maps/api/staticmap?center=#{@flat.address}&amp;zoom=13&amp;scale=2&amp;size=1000x1000&amp;maptype=roadmap&amp;markers=color:red%7C10 Clifton Gardens London W9 1DT&amp;key=AIzaSyBtaHK-BLhBg7TruJu8iKk_wETqZMJM-GY"
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.save
    redirect_to flats_path
  end

  private

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end

end
