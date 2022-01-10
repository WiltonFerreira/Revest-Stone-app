class TabelaComprasController < ApplicationController
  before_action :set_tabela_compra, only: %i[ show edit update destroy ]

  # GET /tabela_compras or /tabela_compras.json
  def index
    @tabela_compras = TabelaCompra.all
  end

  # GET /tabela_compras/1 or /tabela_compras/1.json
  def show
  end

  # GET /tabela_compras/new
  def new
    @tabela_compra = TabelaCompra.new
  end

  def planilha
    @tabela_compra = TabelaCompra.new
    @recurso = Recurso.where(ativo: true).order(:nome)
  end

  def savePlanilha
    #@tabela_compra = TabelaCompra.new
    #@recurso = Recurso.where(ativo: true).order(:nome)
    puts @tabela_compra
  end

  # GET /tabela_compras/1/edit
  def edit
  end

  # POST /tabela_compras or /tabela_compras.json
  def create
    @tabela_compra = TabelaCompra.new(tabela_compra_params)

    respond_to do |format|
      if @tabela_compra.save
        format.html { redirect_to tabela_compra_url(@tabela_compra), notice: "Tabela compra was successfully created." }
        format.json { render :show, status: :created, location: @tabela_compra }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tabela_compra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tabela_compras/1 or /tabela_compras/1.json
  def update
    respond_to do |format|
      if @tabela_compra.update(tabela_compra_params)
        format.html { redirect_to tabela_compra_url(@tabela_compra), notice: "Tabela compra was successfully updated." }
        format.json { render :show, status: :ok, location: @tabela_compra }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tabela_compra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tabela_compras/1 or /tabela_compras/1.json
  def destroy
    @tabela_compra.destroy

    respond_to do |format|
      format.html { redirect_to tabela_compras_url, notice: "Tabela compra was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tabela_compra
      @tabela_compra = TabelaCompra.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tabela_compra_params
      params.require(:tabela_compra).permit(:data, :recurso_id, :supplier_id, :valor, :ativo)
    end
end
