class DetalleComprasController < ApplicationController
  before_action :set_detalle_compra, only: [:show, :edit, :update, :destroy]

  # GET /detalle_compras
  # GET /detalle_compras.json
  def index
    @detalle_compras = DetalleCompra.all
  end

  # GET /detalle_compras/1
  # GET /detalle_compras/1.json
  def show
  end

  # GET /detalle_compras/new
  def new
    @detalle_compra = DetalleCompra.new
  end

  # GET /detalle_compras/1/edit
  def edit
  end

  # POST /detalle_compras
  # POST /detalle_compras.json
  def create
    @detalle_compra = DetalleCompra.new(detalle_compra_params)

    respond_to do |format|
      if @detalle_compra.save
        format.html { redirect_to @detalle_compra, notice: 'Detalle compra was successfully created.' }
        format.json { render :show, status: :created, location: @detalle_compra }
      else
        format.html { render :new }
        format.json { render json: @detalle_compra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /detalle_compras/1
  # PATCH/PUT /detalle_compras/1.json
  def update
    respond_to do |format|
      if @detalle_compra.update(detalle_compra_params)
        format.html { redirect_to @detalle_compra, notice: 'Detalle compra was successfully updated.' }
        format.json { render :show, status: :ok, location: @detalle_compra }
      else
        format.html { render :edit }
        format.json { render json: @detalle_compra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detalle_compras/1
  # DELETE /detalle_compras/1.json
  def destroy
    @detalle_compra.destroy
    respond_to do |format|
      format.html { redirect_to detalle_compras_url, notice: 'Detalle compra was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detalle_compra
      @detalle_compra = DetalleCompra.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def detalle_compra_params
      params.require(:detalle_compra).permit(:compra_id, :repuesto_servicio_id, :cantidad, :precio_unitario, :precio_venta, :subtotal)
    end
end
