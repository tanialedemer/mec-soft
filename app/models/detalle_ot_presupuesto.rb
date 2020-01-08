class DetalleOtPresupuesto < ApplicationRecord
  belongs_to :repuesto_servicio
  belongs_to :orden_trabajo_presupuesto

   def subtotal
    self.cantidad ? cantidad * unit_price : 0
  end

  def unit_price
    if persisted?
      precio_venta
    else
      repuesto_servicio ? repuesto_servicio.costo : 0
    end
  end
end
