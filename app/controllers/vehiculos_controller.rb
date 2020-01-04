class VehiculosController < ApplicationController
  before_action :set_client
  before_action :set_vehiculo, only: [:edit,:show, :update, :destroy]

  # GET /vehiculos
  # GET /vehiculos.json
  def index
    @vehiculos = Vehiculo.all
  end

  # GET /vehiculos/1
  # GET /vehiculos/1.json
  def show
  end

  # GET /vehiculos/new
  def new
    @vehiculo = Vehiculo.new 
  end

  # GET /vehiculos/1/edit
  def edit
  end

  # POST /vehiculos
  # POST /vehiculos.json
  def create
    @vehiculo = Vehiculo.new(vehiculo_params)
    respond_to do |format|
      if @vehiculo.save
        format.html { redirect_to @vehiculo.client, notice: 'El vehículo fue creado exitosamente.' }
        format.json { render :show, status: :created, location: @vehiculo }
      else
        format.html { render :new }
        format.json { render json: @vehiculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vehiculos/1
  # PATCH/PUT /vehiculos/1.json
  def update
    respond_to do |format|
      if @vehiculo.update(vehiculo_params)
        format.html { redirect_to @vehiculo.client, notice: 'El vehículo fue actualizado exitosamente.' }
        format.json { render :show, status: :ok, location: @vehiculo }
      else
        format.html { render :edit }
        format.json { render json: @vehiculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehiculos/1
  # DELETE /vehiculos/1.json
  def destroy
    @vehiculo.destroy
    respond_to do |format|
      format.html { redirect_to @client, notice: 'El vehículo fue eliminado exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    def set_client
      @client = Client.find_by_id(params[:client_id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_vehiculo
      @vehiculo = Vehiculo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vehiculo_params
      params.require(:vehiculo).permit(:client_id, :modelo, :color, :matricula, :marca, :km, :chasis, :year_fab)
    end
end
