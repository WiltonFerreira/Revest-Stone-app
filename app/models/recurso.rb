# == Schema Information
#
# Table name: recursos
#
#  id               :bigint           not null, primary key
#  nome             :string
#  medida           :string
#  grupo_recurso_id :bigint           not null
#  nome_curto       :string
#  ativo            :boolean
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class Recurso < ApplicationRecord
  belongs_to :grupo_recurso
  has_many :tabela_compras
  
  validates_presence_of :grupo_recurso_id, :nome, :nome_curto

  before_save :formata

  enum medidas: {'Kg':1, 'm2':2, 'mL':3, 'm3':4, 'T':5}

  def recurso_grupo
      "#{grupo_recurso.nome} - #{nome} "
  end

  private
  def formata
    self.nome = self.nome.split.collect(&:capitalize).join(' ') if self.nome && !self.nome.blank?
    self.nome_curto = self.nome_curto.split.collect(&:capitalize).join(' ') if self.nome_curto && !self.nome_curto.blank?
  end 

end
