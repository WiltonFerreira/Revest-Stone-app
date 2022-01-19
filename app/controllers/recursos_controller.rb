class RecursosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_recurso, only: %i[ show edit update destroy ]

  # GET /recursos or /recursos.json
  def index
    @recursos = Recurso.all
    @grupo_recursos = GrupoRecurso.all
  end

  # GET /recursos/1 or /recursos/1.json
  def show
  end

  # GET /recursos/new
  def new
    @recurso = Recurso.new
  end

  # GET /recursos/1/edit
  def edit
  end

  # POST /recursos or /recursos.json
  def create
    @recurso = Recurso.new(recurso_params)

    respond_to do |format|
      if @recurso.save
        format.html { redirect_to recurso_url(@recurso), notice: "Recurso salvo com sucesso." }
        format.json { render :show, status: :created, location: @recurso }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @recurso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recursos/1 or /recursos/1.json
  def update
    respond_to do |format|
      if @recurso.update(recurso_params)
        format.html { redirect_to recurso_url(@recurso), notice: "Recurso atualizado com sucesso." }
        format.json { render :show, status: :ok, location: @recurso }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @recurso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recursos/1 or /recursos/1.json
  def destroy
    @recurso.destroy

    respond_to do |format|
      format.html { redirect_to recursos_url, notice: "Recurso excluído com sucesso." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recurso
      @recurso = Recurso.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def recurso_params
      params.require(:recurso).permit(:nome, :medida, :grupo_recurso_id, :nome_curto, :ativo)
    end
end
