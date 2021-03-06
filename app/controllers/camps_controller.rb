class CampsController < ApplicationController
  before_action :set_camp, only: [:edit, :update, :destroy]

  # GET /camps
  # GET /camps.json
  def index
    @camps = Camp.all.order("created_at DESC")
  end

  # GET /camps/new
  def new
    @camp = Camp.new
  end

  # POST /camps
  # POST /camps.json
  def create
    @camp = Camp.new(camp_params)

    respond_to do |format|
      if @camp.save
        format.html { redirect_to camps_path: 'Турбаза успешно добавлена' }
      else
        format.html { render :new }
      end
    end
  end

  # GET /camps/1/edit
  def edit
  end


  # PATCH/PUT /camps/1
  # PATCH/PUT /camps/1.json
  def update
    respond_to do |format|
      if @camp.update(camp_params)
        format.html { redirect_to camps_path, notice: 'Турбаза успешно изменена' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /camps/1
  # DELETE /camps/1.json
  def destroy
    @camp.destroy
    respond_to do |format|
      format.html { redirect_to camps_url, notice: 'Турбаза успешно удалена' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_camp
      @camp = Camp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def camp_params
      params.require(:camp).permit(:name, :city_id)
    end
end
