# == Schema Information
#
# Table name: tabela_compras
#
#  id          :bigint           not null, primary key
#  data        :date
#  recurso_id  :bigint           not null
#  supplier_id :bigint           not null
#  valor       :decimal(, )
#  ativo       :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class TabelaCompra < ApplicationRecord
  belongs_to :recurso
  belongs_to :supplier
  
  validates_presence_of :supplier_id, :recurso_id, :valor 
  validates :valor, :numericality => {:only_integer => false}

  def self.savePlanilha(planilha)
    puts "Planilha: #{planilha}"
    res = Array.new
    res[0] = planilha[:data]
    res[1] = planilha[:supplier_id]

    planilha['recursos'].each do |single|
      res[2] = single['recurso_id']
      if (single['valor'].to_f > 0)
        insert = TabelaCompra.find_or_initialize_by(data: res[0], supplier_id: res[1], recurso_id: res[2])
        #debugger
        insert.valor = single['valor']
        insert.ativo = true
        insert.save!
      end
    end

    #Cria transação
    #Commit em loop

    return true
  end

end
