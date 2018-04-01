json.extract! empleado, :id, :nombre, :descripcion, :tipo, :created_at, :updated_at
json.url empleado_url(empleado, format: :json)
