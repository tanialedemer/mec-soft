json.extract! orden_trabajo_presupuesto, :id, :fecha, :descripción, :client_id, :num_orden, :vehiculo_id, :total, :estado_id, :tipo_factura_id, :mecanico_id, :created_at, :updated_at
json.url orden_trabajo_presupuesto_url(orden_trabajo_presupuesto, format: :json)
