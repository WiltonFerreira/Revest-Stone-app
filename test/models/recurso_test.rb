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
require "test_helper"

class RecursoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
