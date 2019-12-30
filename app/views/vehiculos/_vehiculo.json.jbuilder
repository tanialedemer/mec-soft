json.extract! vehiculo, :id, :client_id, :modelo, :color, :matricula, :marca, :km, :chasis, :year_fab, :created_at, :updated_at
json.url vehiculo_url(vehiculo, format: :json)
