class OrdenTrabajoPresupuestosController < ApplicationController
  before_action :set_orden_trabajo_presupuesto, only: [:show, :edit, :update, :destroy]

  # GET /orden_trabajo_presupuestos
  # GET /orden_trabajo_presupuestos.json
  def index
    @orden_trabajo_presupuestos = OrdenTrabajoPresupuesto.all
  end

  # GET /orden_trabajo_presupuestos/1
  # GET /orden_trabajo_presupuestos/1.json
  def show
    @detalle_ot_presupuesto = DetalleOtPresupuesto.new
  end

  # GET /orden_trabajo_presupuestos/new
  def new
    @orden_trabajo_presupuesto = OrdenTrabajoPresupuesto.new(fecha: Date::current)
  end

  # GET /orden_trabajo_presupuestos/1/edit
  def edit
  end

  # POST /orden_trabajo_presupuestos
  # POST /orden_trabajo_presupuestos.json
  def create
    @orden_trabajo_presupuesto = OrdenTrabajoPresupuesto.new(orden_trabajo_presupuesto_params)

    respond_to do |format|
      if @orden_trabajo_presupuesto.save
        format.html { redirect_to @orden_trabajo_presupuesto, notice: 'Orden trabajo presupuesto was successfully created.' }
        format.json { render :show, status: :created, location: @orden_trabajo_presupuesto }
      else
        format.html { render :new }
        format.json { render json: @orden_trabajo_presupuesto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orden_trabajo_presupuestos/1
  # PATCH/PUT /orden_trabajo_presupuestos/1.json
  def update
    respond_to do |format|
      if @orden_trabajo_presupuesto.update(orden_trabajo_presupuesto_params)
        format.html { redirect_to @orden_trabajo_presupuesto, notice: 'Orden trabajo presupuesto was successfully updated.' }
        format.json { render :show, status: :ok, location: @orden_trabajo_presupuesto }
      else
        format.html { render :edit }
        format.json { render json: @orden_trabajo_presupuesto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orden_trabajo_presupuestos/1
  # DELETE /orden_trabajo_presupuestos/1.json
  def destroy
    @orden_trabajo_presupuesto.destroy
    respond_to do |format|
      format.html { redirect_to orden_trabajo_presupuestos_url, notice: 'Orden trabajo presupuesto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orden_trabajo_presupuesto
      @orden_trabajo_presupuesto = OrdenTrabajoPresupuesto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def orden_trabajo_presupuesto_params
      params.require(:orden_trabajo_presupuesto).permit(:fecha, :descripción, :client_id, :num_orden, :vehiculo_id, :total, :estado_id, :tipo_factura_id, :mecanico_id)
    end
end
