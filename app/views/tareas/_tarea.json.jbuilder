json.extract! tarea, :id, :nombre, :descripcion, :created_at, :updated_at
json.url tarea_url(tarea, format: :json)
