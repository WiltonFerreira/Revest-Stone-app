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
require "test_helper"

class SupplierTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
