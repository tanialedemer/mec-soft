class RepuestoServiciosController < ApplicationController
  before_action :set_repuesto_servicio, only: [:show, :edit, :update, :destroy]

  # GET /repuesto_servicios
  # GET /repuesto_servicios.json
  def index
    @repuesto_servicios = RepuestoServicio.all
  end

  # GET /repuesto_servicios/1
  # GET /repuesto_servicios/1.json
  def show
  end

  # GET /repuesto_servicios/new
  def new
    @repuesto_servicio = RepuestoServicio.new
  end

  # GET /repuesto_servicios/1/edit
  def edit
  end

  # POST /repuesto_servicios
  # POST /repuesto_servicios.json
  def create
    @repuesto_servicio = RepuestoServicio.new(repuesto_servicio_params)

    respond_to do |format|
      if @repuesto_servicio.save
        format.html { redirect_to repuesto_servicios_path, notice: 'Repuesto o Servicio fue creado con éxito.' }
        format.json { render :index, status: :created, location: @repuesto_servicio }
      else
        format.html { render :new }
        format.json { render json: @repuesto_servicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /repuesto_servicios/1
  # PATCH/PUT /repuesto_servicios/1.json
  def update
    respond_to do |format|
      if @repuesto_servicio.update(repuesto_servicio_params)
        format.html { redirect_to @repuesto_servicio, notice: 'Repuesto o Servicio fue actualizado con éxito.' }
        format.json { render :show, status: :ok, location: @repuesto_servicio }
      else
        format.html { render :edit }
        format.json { render json: @repuesto_servicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /repuesto_servicios/1
  # DELETE /repuesto_servicios/1.json
  def destroy
    @repuesto_servicio.destroy
    respond_to do |format|
      format.html { redirect_to repuesto_servicios_url, notice: 'Repuesto o Servicio fue eliminado con éxito.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_repuesto_servicio
      @repuesto_servicio = RepuestoServicio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def repuesto_servicio_params
      params.require(:repuesto_servicio).permit(:codigo, :descripcion, :stock, :costo, :precio_venta, :category_id)
    end
end
