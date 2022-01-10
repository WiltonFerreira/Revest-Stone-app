class TabelaCompra < ApplicationRecord
  belongs_to :recurso
  belongs_to :supplier
  

  validates_presence_of :supplier_id, :recurso_id, :valor 
  validates :valor, :numericality => {:only_integer => false}

end
