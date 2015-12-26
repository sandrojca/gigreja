class CreatePessoas < ActiveRecord::Migration
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.string :situacao
      t.string :tipo
      t.string :situação_inativo
      t.string :sexo
      t.date :data_nascimento
      t.string :naturalidade
      t.string :nacionalidade
      t.string :estado_civil
      t.string :profissao
      t.string :identidade
      t.string :cpf
      t.string :escolaridade
      t.string :endereco
      t.string :numero
      t.string :complemento
      t.string :bairro
      t.string :cep
      t.string :cidade
      t.string :uf
      t.string :tel_residencial
      t.string :tel_comercial
      t.string :tel_celular
      t.string :email
      t.string :pai
      t.string :mae
      t.string :conjuge
      t.date :data_casamento
      t.date :data_batismo
      t.string :batismo_local
      t.string :recebimento_por
      t.date :data_recebimento
      t.text :obs

      t.timestamps null: false
    end
  end
end
