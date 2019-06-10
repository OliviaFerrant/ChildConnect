class PlacesController < ApplicationController
  before_action :set_case, only: [:new, :create]

  def new
    @place = Place.new
    authorize @place
  end
  def create
    @place = Place.new(place_params)
    authorize @place
    @place.case = @case
    if @place.save 
      redirect_to case_path(@case)
    else
      render :new
    end
  end

  def edit
    authorize @place
  end

  def update
    authorize @place
    if @place.update(place_params)
      redirect_to case_path(id: @case)
    else
      render :edit
    end
  end

  def destroy
    authorize @place
    @place.destroy
    redirect_to case_path(@path)

  private

  def set_case 
    @case = Case.find(params[:case_id])
  end

  def place_params
    params.require(:place).permit(:address)
  end
end
