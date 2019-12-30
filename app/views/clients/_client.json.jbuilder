json.extract! client, :id, :ruc, :nombre, :apellido, :direccion, :telefono, :email, :created_at, :updated_at
json.url client_url(client, format: :json)
