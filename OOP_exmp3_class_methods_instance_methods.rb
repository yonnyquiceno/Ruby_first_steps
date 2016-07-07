class Persona
  attr_accessor :nombre, :sexo
  @@poblacion = 6_000_000_000
  def initialize(nombre, sexo)
    @nombre = nombre
    @sexo = sexo
  end

  def morir # metodo de instancia
    @@poblacion -= 1 # variable de clase
    @nombre = '' # variable de instancia
    @sexo = ''
  end

  def self.poblacion # metodo de clase
    @@poblacion
  end
end
