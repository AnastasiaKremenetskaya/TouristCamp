class RegionsController < ApplicationController
  before_action :set_region, only: [:edit, :update, :destroy]

  def index
    @regions = Region.all.order("created_at DESC")
  end

  def new
    @region = Region.new
  end

  def create
    @region = Region.new(region_params)

    respond_to do |format|
      if @region.save
        format.html {redirect_to region_path: 'Регион успешно добавлен'}
      else
        format.html { render :new }
      end
    end
  end


  def edit
  end

  def update
    respond_to do |format|
      if @country.update(country_params)
        format.html {redirect_to region_path: 'Регион успешно обновлен'}
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @region.destroy
    respond_to do |format|
      format.html { redirect_to region_url, notice: 'Регион успешно удален' }
    end
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
