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
require "test_helper"

class TabelaCompraTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
