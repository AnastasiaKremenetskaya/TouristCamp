class CitiesController < ApplicationController
  before_action :set_city, only: [:edit, :update, :destroy]

  # GET /cities
  # GET /cities.json
  def index
    @cities = City.all.order("created_at DESC")
  end

  # GET /cities/new
  def new
    @city = City.new
  end

  # POST /cities
  # POST /cities.json
  def create
    @city = City.new(city_params)

    respond_to do |format|
      if @city.save
        format.html { redirect_to city_path: 'Город успешно добавлен' }
      else
        format.html { render :new }
      end
    end
  end

  # GET /cities/1/edit
  def edit
  end


  # PATCH/PUT /cities/1
  # PATCH/PUT /cities/1.json
  def update
    respond_to do |format|
      if @city.update(city_params)
        format.html { redirect_to city_path: 'Город успешно обновлен' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /cities/1
  # DELETE /cities/1.json
  def destroy
    @city.destroy
    respond_to do |format|
      format.html { redirect_to cities_url: 'Город успешно удален' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_city
      @city = City.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def city_params
      params.require(:city).permit(:name, :region_id)
    end
end
