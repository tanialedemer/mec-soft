class PagoFacturasController < ApplicationController
  before_action :set_pago_factura, only: [:show, :edit, :update, :destroy]

  # GET /pago_facturas
  # GET /pago_facturas.json
  def index
    @pago_facturas = PagoFactura.all
  end

  # GET /pago_facturas/1
  # GET /pago_facturas/1.json
  def show
  end

  # GET /pago_facturas/new
  def new
    @pago_factura = PagoFactura.create(compra_id: params[:compra_id])
  end

  # GET /pago_facturas/1/edit
  def edit
  end

  def detalle
  end
  # POST /pago_facturas
  # POST /pago_facturas.json
  def create
    @pago_factura = PagoFactura.new(pago_factura_params)

    respond_to do |format|
      if @pago_factura.save
        format.html { redirect_to @pago_factura, notice: 'Pago factura creado con éxito.' }
        format.json { render :show, status: :created, location: @pago_factura }
      else
        format.html { render :new }
        format.json { render json: @pago_factura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pago_facturas/1
  # PATCH/PUT /pago_facturas/1.json
  def update
    respond_to do |format|
      if @pago_factura.update(pago_factura_params)
        format.html { redirect_to compra_id_detalle_path(@pago_factura.compra_id), notice: 'Pago factura actualizado con éxito.' }
        format.json { render :show, status: :ok, location: @pago_factura }
      else
        format.html { render :edit }
        format.json { render json: @pago_factura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pago_facturas/1
  # DELETE /pago_facturas/1.json
  def destroy
    @pago_factura.destroy
    respond_to do |format|
      format.html { redirect_to pago_facturas_url, notice: 'Pago factura eliminado con éxito.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pago_factura
      @pago_factura = PagoFactura.find(params[:id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def pago_factura_params
      params.require(:pago_factura).permit(:compra_id, :monto_pago)
    end
end
