# == Schema Information
#
# Table name: grupo_recursos
#
#  id         :bigint           not null, primary key
#  nome       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class GrupoRecurso < ApplicationRecord
    has_many :recursos
    validates_presence_of :nome

    before_save :formata

    private
    def formata
        self.nome = self.nome.split.collect(&:capitalize).join(' ') if self.nome && !self.nome.blank?
    end 
end
