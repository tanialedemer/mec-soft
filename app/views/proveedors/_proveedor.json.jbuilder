json.extract! proveedor, :id, :ruc, :nombre, :direccion, :telefono, :email, :created_at, :updated_at
json.url proveedor_url(proveedor, format: :json)
