class GrupoRecursosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_grupo_recurso, only: %i[ show edit update destroy ]

  # GET /grupo_recursos or /grupo_recursos.json
  def index
    @grupo_recursos = GrupoRecurso.all
  end

  # GET /grupo_recursos/1 or /grupo_recursos/1.json
  def show
  end

  # GET /grupo_recursos/new
  def new
    @grupo_recurso = GrupoRecurso.new
  end

  # GET /grupo_recursos/1/edit
  def edit
  end

  # POST /grupo_recursos or /grupo_recursos.json
  def create
    @grupo_recurso = GrupoRecurso.new(grupo_recurso_params)

    respond_to do |format|
      if @grupo_recurso.save
        format.html { redirect_to grupo_recurso_url(@grupo_recurso), notice: "Grupo de recurso foi gravado com sucesso." }
        format.json { render :show, status: :created, location: @grupo_recurso }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @grupo_recurso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grupo_recursos/1 or /grupo_recursos/1.json
  def update
    respond_to do |format|
      if @grupo_recurso.update(grupo_recurso_params)
        format.html { redirect_to grupo_recurso_url(@grupo_recurso), notice: "Grupo de recurso foi atualizado com sucesso." }
        format.json { render :show, status: :ok, location: @grupo_recurso }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @grupo_recurso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grupo_recursos/1 or /grupo_recursos/1.json
  def destroy
    @grupo_recurso.destroy

    respond_to do |format|
      format.html { redirect_to grupo_recursos_url, notice: "Grupo de Recurso foi excluído com sucesso." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grupo_recurso
      @grupo_recurso = GrupoRecurso.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def grupo_recurso_params
      params.require(:grupo_recurso).permit(:nome)
    end
end
