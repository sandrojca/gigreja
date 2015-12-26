class Pessoa < ActiveRecord::Base

class Situacao
    KEYS = [
      ATIVO    = "Ativo",
      INATIVO  = "Inativo",
      ABANDONO = "Abandono",
      CM       = "Carta de mudança"
    ]
		def self.keys
      KEYS
    end

    def self.all
      keys.map { |key| new(key) }
    end

    def initialize(key)
      @key = key
    end

    # simple_form automatically uses `id` for the option value.
    def id
      @key
    end

    # simple_form automatically uses this for the option text.
    def name
      @key
    end
  end
class Tipo_membro
    KEYS = [
      Membro  = "Membro",
      Congregado  = "Congregado"
    ]
		def self.keys
      KEYS
    end

    def self.all
      keys.map { |key| new(key) }
    end

    def initialize(key)
      @key = key
    end

    # simple_form automatically uses `id` for the option value.
    def id
      @key
    end

    # simple_form automatically uses this for the option text.
    def name
      @key
    end
  end


end
