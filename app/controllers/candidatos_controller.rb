class CandidatosController < ApplicationController
  before_action :set_candidato, only: [:show, :edit, :update, :destroy]

  # GET /candidatos
  # GET /candidatos.json
  def index
    @candidatos = Candidato.all.limit(10)
  end

  # GET /candidatos/1
  # GET /candidatos/1.json
  def show
  end

  # GET /candidatos/new
  def new
    @candidato = Candidato.new
  end

  # GET /candidatos/1/edit
  def edit
  end

  # POST /candidatos
  # POST /candidatos.json
  def create
    @candidato = Candidato.new(candidato_params)

    respond_to do |format|
      if @candidato.save
        format.html { redirect_to @candidato, notice: 'Candidato was successfully created.' }
        format.json { render action: 'show', status: :created, location: @candidato }
      else
        format.html { render action: 'new' }
        format.json { render json: @candidato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /candidatos/1
  # PATCH/PUT /candidatos/1.json
  def update
    respond_to do |format|
      if @candidato.update(candidato_params)
        format.html { redirect_to @candidato, notice: 'Candidato was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @candidato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /candidatos/1
  # DELETE /candidatos/1.json
  def destroy
    @candidato.destroy
    respond_to do |format|
      format.html { redirect_to candidatos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_candidato
      @candidato = Candidato.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def candidato_params
      params.require(:candidato).permit(:data_geracao, :hora_geracao, :ano_eleicao, :num_turno, :descricao_eleicao, :sigla_uf, :sigla_ue, :descricao_ue, :codigo_cargo, :descricao_cargo, :nome_candidato, :sequencial_candidato, :numero_candidato, :nome_urna_candidato, :cod_situacao_candidatura, :des_situacao_candidatura, :numero_partido, :sigla_partido, :nome_partido, :codigo_legenda, :sigla_legenda, :composicao_legenda, :nome_legenda, :codigo_ocupacao, :descricao_ocupacao, :data_nascimento, :num_titulo_eleitoral, :idade_data_eleicao, :codigo_sexo, :descricao_sexo, :cod_grau_instrucao, :descricao_grau_instrucao, :codigo_estado_civil, :descricao_estado_civil, :codigo_nacionalidade, :descricao_nacionalidade, :sigla_uf_nascimento, :codigo_municipio_nascimento, :nome_municipio_nascimento, :despesa_max_campanha, :cod_sit_tot_turno, :desc_sit_tot_turno)
    end
end
