class Compra < ApplicationRecord
  belongs_to :proveedor
  belongs_to :tipo_factura
end
