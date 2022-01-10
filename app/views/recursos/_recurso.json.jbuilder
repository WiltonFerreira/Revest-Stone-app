json.extract! recurso, :id, :nome, :medida, :grupo_recurso_id, :nome_curto, :ativo, :created_at, :updated_at
json.url recurso_url(recurso, format: :json)
