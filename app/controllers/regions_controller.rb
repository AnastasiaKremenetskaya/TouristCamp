class RegionsController < ApplicationController
  before_action :set_region, only: [:edit, :update, :destroy]

  def index
    @regions = Region.all
  end

  def new
    @region = Region.new
  end

  def create
    @region = Region.new(region_params)

    redirect_to @region, notice: 'Регион успешно добавлен'
  end


  def edit
  end

  def update
     redirect_to @region, notice: 'Регион успешно обновлен'
  end

  def destroy
    @region.destroy

    redirect_to region_url, notice: 'Регион успешно удален'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_region
    @region = Region.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def region_params
    params.require(:region).permit(:name, :country_id)
  end

end
