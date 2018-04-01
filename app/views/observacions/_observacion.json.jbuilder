json.extract! observacion, :id, :descripcion, :created_at, :updated_at
json.url observacion_url(observacion, format: :json)
