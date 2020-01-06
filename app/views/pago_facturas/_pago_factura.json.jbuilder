json.extract! pago_factura, :id, :compra_id, :monto_pago, :created_at, :updated_at
json.url pago_factura_url(pago_factura, format: :json)
