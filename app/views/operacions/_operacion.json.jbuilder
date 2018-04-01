json.extract! operacion, :id, :nombre, :descripcion, :created_at, :updated_at
json.url operacion_url(operacion, format: :json)
