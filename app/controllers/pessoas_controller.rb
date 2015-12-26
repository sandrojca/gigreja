require 'correios-cep'
class PessoasController < ApplicationController
  before_action :set_pessoa, only: [:show, :edit, :update, :destroy]

  # GET /pessoas
  def index
    @pessoas = Pessoa.all
  end

  # GET /pessoas/1
  def show
  end

  # GET /pessoas/new
  def new
    @pessoa = Pessoa.new
  end

  # GET /pessoas/1/edit
  def edit
  end

  # POST /pessoas
  def create
    @pessoa = Pessoa.new(pessoa_params)

    if @pessoa.save
      redirect_to @pessoa, notice: 'Pessoa was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /pessoas/1
  def update
    if @pessoa.update(pessoa_params)
      redirect_to @pessoa, notice: 'Pessoa was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /pessoas/1
  def destroy
    @pessoa.destroy
    redirect_to pessoas_url, notice: 'Pessoa was successfully destroyed.'
  end

  def cep
    @endereco = fetch_endereco(params[:cep])
    respond_to do |format|
      format.js
    end
  end 

  def fetch_endereco cep
    address = Correios::CEP::AddressFinder.get cep
    
  end   

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pessoa
      @pessoa = Pessoa.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pessoa_params
      params.require(:pessoa).permit(:nome, :situacao, :tipo, :situação_inativo, :sexo, :data_nascimento, :naturalidade, :nacionalidade, :estado_civil, :profissao, :identidade, :cpf, :escolaridade, :endereco, :numero, :complemento, :bairro, :cep, :cidade, :uf, :tel_residencial, :tel_comercial, :tel_celular, :email, :pai, :mae, :conjuge, :data_casamento, :data_batismo, :batismo_local, :recebimento_por, :data_recebimento, :obs)
    end
end
