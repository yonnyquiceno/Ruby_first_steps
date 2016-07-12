class Vendedor < Persona
  attr_accessor :productos, :dinero_ganado
  def initialize(nombre,
                 email,
                 productos)
    super(nombre, email)
    @productos = productos
    @dinero_ganado = 0.0
  end
end
