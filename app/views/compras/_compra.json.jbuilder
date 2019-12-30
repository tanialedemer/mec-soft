json.extract! compra, :id, :fecha, :proveedor_id, :num_fact, :total, :pago, :saldo, :tipo_factura_id, :created_at, :updated_at
json.url compra_url(compra, format: :json)
