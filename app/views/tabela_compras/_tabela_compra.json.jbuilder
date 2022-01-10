json.extract! tabela_compra, :id, :data, :recurso_id, :supplier_id, :valor, :ativo, :created_at, :updated_at
json.url tabela_compra_url(tabela_compra, format: :json)
