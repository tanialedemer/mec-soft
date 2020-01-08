class DetalleOtPresupuestosController < ApplicationController
  before_action :set_orden_presupuesto, only: [:new, :create]  
  before_action :set_detalle_ot_presupuesto, only: [:show, :edit, :update, :destroy]

  # GET /detalle_ot_presupuestos
  # GET /detalle_ot_presupuestos.json
  def index
    @detalle_ot_presupuestos = DetalleOtPresupuesto.all
  end

  # GET /detalle_ot_presupuestos/1
  # GET /detalle_ot_presupuestos/1.json
  def show
  end

  # GET /detalle_ot_presupuestos/new
  def new
    # @detalle_ot_presupuesto = DetalleOtPresupuesto.new
    @detalle_ot_presupuesto = @orden_trabajo_presupuesto.detalle_ot_presupuesto.build
    @detalle_ot_presupuesto.repuesto_servicio = RepuestoServicio.first
  end

  # GET /detalle_ot_presupuestos/1/edit
  def edit
  end

  # POST /detalle_ot_presupuestos
  # POST /detalle_ot_presupuestos.json
  def create
    item_exists = false
    item_id = params[:detalle_ot_presupuesto][:repuesto_servicio_id].to_i
    @orden_trabajo_presupuesto.detalle_ot_presupuestos.each do |detail|
      if detail.repuesto_servicio_id == item_id
        # Ya existe el item en la factura, agregar cantidad
        item_exists = true
        @detalle_ot_presupuesto = detail
        @saved_sale_detail = detail.id
        break
      end
    end
    if item_exists
      @detalle_ot_presupuesto.cantidad += params[:detalle_ot_presupuesto][:cantidad].to_i
      @detalle_ot_presupuesto.precio_venta= params[:detalle_ot_presupuesto][:precio_venta].to_f
      @detalle_ot_presupuesto.save!
    else
      detalle_ot_presupuesto = DetalleOtPresupuesto.new(detalle_ot_presupuesto_params)
      @orden_trabajo_presupuesto.detalle_ot_presupuestos << detalle_ot_presupuesto
    end

    respond_to do |format|
      
      if @orden_trabajo_presupuesto.save
        format.html {redirect_to @orden_trabajo_presupuesto, notice: 'El detalle se agregó correctamente.'}
        format.json {render :show, status: :created, location: @detalle_compra}
      else
        format.html {render :new}
        format.json {render json: @detalle_ot_presupuesto.errors, status: :unprocessable_entity}
      end
    end
  end

  # PATCH/PUT /detalle_ot_presupuestos/1
  # PATCH/PUT /detalle_ot_presupuestos/1.json
  def update
    respond_to do |format|
      if @detalle_ot_presupuesto.update(detalle_ot_presupuesto_params)
        format.html { redirect_to @detalle_ot_presupuesto, notice: 'Detalle ot presupuesto was successfully updated.' }
        format.json { render :show, status: :ok, location: @detalle_ot_presupuesto }
      else
        format.html { render :edit }
        format.json { render json: @detalle_ot_presupuesto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detalle_ot_presupuestos/1
  # DELETE /detalle_ot_presupuestos/1.json
  def destroy
    @detalle_ot_presupuesto.destroy
    respond_to do |format|
      format.html { redirect_to detalle_ot_presupuestos_url, notice: 'Detalle ot presupuesto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detalle_ot_presupuesto
      @detalle_ot_presupuesto = DetalleOtPresupuesto.find(params[:id])
    end
    def set_orden_presupuesto
      @orden_trabajo_presupuesto = OrdenTrabajoPresupuesto.find(params[:orden_trabajo_presupuesto_id].to_i)
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def detalle_ot_presupuesto_params
      params.require(:detalle_ot_presupuesto).permit(:cantidad, :precio_venta, :subtotal, :repuesto_servicio_id, :orden_trabajo_presupuesto_id)
    end
end
