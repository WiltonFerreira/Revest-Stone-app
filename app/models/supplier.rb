# == Schema Information
#
# Table name: suppliers
#
#  id          :bigint           not null, primary key
#  fantasia    :string
#  razaosocial :string
#  telefone    :string
#  endereco    :string
#  cidade      :string
#  estado      :string
#  email       :string
#  whatsapp    :string
#  site        :string
#  ativo       :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  cnpj        :string
#  cpf         :string
#
class Supplier < ApplicationRecord
    has_many :tabela_compras

    validates :razaosocial, :fantasia, :endereco, :cidade, :estado, :telefone, :presence => true
    after_initialize :set_defaults, unless: :persisted?
    before_save :formata

    def localizacao
        [endereco, cidade, estado].compact.join(', ')
    end

    def nomesupplier
        "#{fantasia} - #{razaosocial}"
    end

    private
    def formata
        self.razaosocial = self.razaosocial.split.collect(&:capitalize).join(' ') if self.razaosocial && !self.razaosocial.blank?
        self.fantasia = self.fantasia.split.collect(&:capitalize).join(' ') if self.fantasia && !self.fantasia.blank?
        self.endereco = self.endereco.split.collect(&:capitalize).join(' ') if self.endereco && !self.endereco.blank?
        cidade.upcase!
        estado.upcase!

        email.downcase!
        site.downcase!
    end

    def set_defaults
        self.type  ||= 'Supplier'
        self.estado ||='GO'
    end

end
